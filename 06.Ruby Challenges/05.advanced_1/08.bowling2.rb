class Game
  def initialize
    @frames = Hash.new
    10.times { |frm_num| frames[frm_num + 1] = [] }
    @current_frame_num = 1
    @rolls = 20
  end

  attr_accessor :frames, :current_frame_num, :rolls

  def roll(pins)
    check_errors(pins)

    if current_frame_full? || frame_sum >= 10
      self.current_frame_num += 1 unless last_frame?
    end

    check_if_pins_exceed(pins)

    current_frame << pins
    update_rolls
  end

  def update_rolls
    if last_frame? && (current_frame[0] == 10 || current_frame[0..1].sum == 10)
      self.rolls += 1
    end
    self.rolls -= 1
  end

  def score
    check_game_over

    parsed_scores = []
    frames.each do |key, value|
      if strike(value)
        strike_score(parsed_scores, key)
      elsif spare(value)
        spare_score(parsed_scores, key)
      else
        parsed_scores << value.sum
      end
    end

    parsed_scores.sum
  end

  def strike_score(parsed_scores, key)
    parsed_scores << frames[key][0] + bonus_strike(key)
  end

  def spare_score(parsed_scores, key)
    parsed_scores << frames[key].sum + bonus_spare(key)
  end

  def strike(value)
    value.size == 1
  end

  def spare(value)
    value.sum == 10
  end

  def bonus_strike(key)
    [frames[key + 1], frames[key + 2]].flatten[0..1].sum
  end

  def bonus_spare(key)
    frames[key + 1][0]
  end

  def current_frame
    frames[self.current_frame_num]
  end

  def current_frame_full?
    return false if self.current_frame_num == 10 && current_frame.size >= 3

    current_frame.size > 1
  end

  def last_frame?
    self.current_frame_num == 10
  end

  def frame_sum
    current_frame.sum
  end

  def strike?
    current_frame.size == 1 && current_frame[0] == 10
  end

  def spare?
    current_frame.size == 2 && current_frame.sum == 10
  end

  def check_errors(pins)
    raise 'Pins must have a value from 0 to 10' if !pins.between?(0, 10)
    raise 'Should not be able to roll after game is over' if rolls == 0
    raise 'Pin count exceeds pins on the lane' if conditions(pins)
  end

  def conditions(pins)
    check_last_frames_second_roll_is_not_a_spare && current_frame[1] + pins > 10
  end

  def check_last_frames_second_roll_is_not_a_spare
    last_frame? && current_frame.size == 2 && current_frame[1] < 10
  end

  def check_if_pins_exceed(pins)
    raise "Pin count exceeds pins on the lane" if not_spare_or_strike(pins)
  end

  def not_spare_or_strike(pins)
    return false if last_frame?

    current_frame.sum + pins > 10 && !strike? && !spare?
  end

  ERRMSG = {
    notover: 'Score cannot be taken until the end of the game',
    notover2: 'Game is not yet over, cannot score!'
  }

  def check_game_over
    raise ERRMSG[:notover] if current_frame_num != 10
    raise ERRMSG[:notover] if strike_needs_fill
    raise ERRMSG[:notover2] if current_frame_num == 10 && current_frame.size < 2
  end

  def strike_needs_fill
    current_frame[0] == 10 && current_frame.size == 2
  end
end

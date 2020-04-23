class Game
  attr_accessor :frames

  def initialize
    build_frames
    @current_frame = 0
  end

  def roll(pins)
    raise 'Pins must have a value from 0 to 10' unless 
      (0..10).include?(pins)
    raise 'Should not be able to roll after game is over' if
      game_over?

    frame = frames[@current_frame]
    frame.roll(pins)

    next_frame if frame.complete?
  end
  
  def score
    raise 'Score cannot be taken until the end of the game' unless 
      game_over?

    total = 0

    frames.each_with_index do |frame, idx|
      total += frame.rolls_total
      
      break if frame.final 
      
      next_frame = frames[idx + 1]

      if frame.spare?
        total += next_frame.roll_1 
      elsif frame.strike?
        total += next_frame.sum_two_rolls

        if next_frame.strike? && !next_frame.final
          total += frames[idx + 2].roll_1
        end
      end
    end

    total
  end

  private

  def build_frames
    @frames = Array.new(9) { Frame.new }
    frames << FinalFrame.new
  end

  def next_frame
    @current_frame += 1
  end

  def game_over?
    frames.all?(&:complete?)
  end
end

class Frame
  attr_reader :final

  def initialize
    @rolls = []
  end

  def roll(pins)
    raise 'Pin count exceeds pins on the lane' if 
      pins_overflow?(pins)
    @rolls << pins 
  end

  def roll_1
    @rolls[0]
  end

  def sum_two_rolls
    roll_1 + (@rolls[1] || 0)
  end
  
  def strike? 
    roll_1 == 10
  end

  def spare?
    @rolls.size > 1 && sum_two_rolls == 10
  end

  def complete?
    @rolls.size == 2 || strike?
  end

  def rolls_total
    @rolls.sum
  end

  private

  def pins_overflow?(pins)
    rolls_total + pins > 10
  end
end

class FinalFrame < Frame
  def initialize
    super
    @final = true
  end

  def complete?
    (@rolls.size == 3 && (strike? || spare?) ) || 
      (@rolls.size == 2 && (!strike? && !spare?) )
  end

  private 

  def pins_overflow?(pins)
    (rolls_total + pins > 30) ||
      (@rolls.size > 0 && 
       @rolls.last != 10 && 
       @rolls.last + pins > 10)
  end
end
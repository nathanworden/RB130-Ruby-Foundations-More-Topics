class Player
  def initialize(name, initial_health=50)
    @name = name.capitalize
    @health = initial_health
  end

  attr_accessor :name, :health

  def to_s
    if health > 0 
      "I'm #{name} with health = #{health}."
    else
      "I was John, now I am dead :(."
    end
  end

  def boost
    raise NoMethodError if health <= 0 

    @health += 20
  end

  def hurt
   raise NoMethodError if health <= 0 

   @health -= 10
  end

  def dead?
    @health <= 0
  end
end


player = Player.new("john", 100)
default_player = Player.new("jane")


# p player.name
p player.health
p default_player.health

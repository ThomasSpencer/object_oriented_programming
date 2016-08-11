class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      evening = @meal_time - 12
      return "#{evening} PM"
    elsif @meal_time == 0
      return "12 AM"
    else
      return "#{@meal_time} AM"
    end
  end

  def meow
    return "Meow, my name is #{@name}. I PUR-fer to eat #{@preferred_food} at #{self.eats_at}"
  end
end

felix = Cat.new('Felix', 'fish', 16)
puts felix.meow

garfield = Cat.new('Garfield', 'lasagna', 8)
puts garfield.meow

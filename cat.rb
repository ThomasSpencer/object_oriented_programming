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
    else
      return "#{@meal_time} AM"
    end
  end

end

felix = Cat.new('Felix', 'fish', 16)

garfield = Cat.new('Garfield', 'lasagna', 8)

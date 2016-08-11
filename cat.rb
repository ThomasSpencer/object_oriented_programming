class Cat(name, preferred_food, meal_time)

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

end

felix = Cat.new('Felix', 'fish', 16)

garfield = Cat.new('Garfield', 'lasagna', 8)

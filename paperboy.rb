class Paperboy

  def initialize(name, expereince, side_of_street, earnings)
    @name           = name
    @expereince     = expereince
    @side_of_street = side_of_street
    @earnings       = earnings
  end

  def quota
    total = 50 + (@expereince / 2)
    return total
  end

end

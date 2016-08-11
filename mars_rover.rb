class Rover

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def read_instruction(*instruction)
    instruction.each do |x|
      case x
      when "M"
        self.move
      when "L"
        self.turn("L")
      when "R"
        self.turn("R")
      end
      return "The rover is now at #{@x}, #{@y} facing #{@direction}."
    end
  end

  def move
    if @direction == "N"
      @y += 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "W"
      @x -= 1
    else
      puts "The rover does not have a valid direction option"
    end
  end

  def turn(rotate)
    case rotate
    when "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      end
    when "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "W"
        @direction = "N"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "E"
        @direction = "S"
      end
    end
  end
end

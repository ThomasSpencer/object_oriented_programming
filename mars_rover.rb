class Rover

  def initialize(x, y, direction)#, plateau)
    @x = x
    @y = y
    @direction = direction
    #@plateau = plateau
  end

  def read_instruction
    puts "Please input instructions (M = move forward, L = turn left, R = turn right)"
    instruction = gets.chomp.upcase.split('')
    instruction.each do |x|
      case x
      when "M"
        self.move
      when "L"
        self.turn("L")
      when "R"
        self.turn("R")
      end
    end
    return "#{@x} #{@y} #{@direction}"
  end

  def move
    if @direction == "N"
      @y += 1 #unless @y + 1 > @plateau.max_y
    elsif @direction == "E"
      @x += 1 #unless @y + 1 > @plateau.max_x
    elsif @direction == "S"
      @y -= 1 #unless @y - 1 < 0
    elsif @direction == "W"
      @x -= 1 #unless @x - 1 < 0
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

# class Plateau
#
#   attr_reader :max_x, :max_y
#
#   def initialize(max_x, max_y)
#     @max_x = max_x
#     @max_y = max_y
#   end
# end
#
# puts "Please provide the maximum for the X and Y axis."
# plateau_size = gets.chomp.split(' ')
# plateau = Plateau.new(plateau_size[0], plateau_size[1])
#
# puts "Please provide where rover_1 will be placed and it's facing"
# answer = gets.chomp.split(' ')
# rover_1 = Rover.new(answer[0], answer[1], answer[2], plateau)

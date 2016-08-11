class Rover

  attr_reader :x, :y, :direction

  def initialize(x, y, direction, plateau_size)
    @x = x
    @y = y
    @direction = direction
    @plateau_size = plateau_size
  end

  def read_instruction(x)
    x.each do |command|
      case command
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
      @y += 1 unless @y + 1 > @plateau_size.max_y
    elsif @direction == "E"
      @x += 1 unless @x + 1 > @plateau_size.max_x
    elsif @direction == "S"
      @y -= 1 unless @y - 1 < 0
    elsif @direction == "W"
      @x -= 1 unless @x - 1 < 0
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

class Plateau

  attr_reader :max_x, :max_y

  def initialize(max_x, max_y)
    @max_x = max_x
    @max_y = max_y
  end
end

puts "Please provide the maximum for the X and Y axis."
plateau_size = gets.chomp.split(' ')
plateau = Plateau.new(plateau_size[0].to_i, plateau_size[1].to_i)

puts "Please provide where rover_1 will be placed and it's facing"
answer = gets.chomp.split(' ')
rover_1 = Rover.new(answer[0].to_i, answer[1].to_i, answer[2].to_s.upcase, plateau)
puts "New rover created."

puts "Please provide where rover_2 will be placed and it's facing"
answer = gets.chomp.split(' ')
rover_2 = Rover.new(answer[0].to_i, answer[1].to_i, answer[2].to_s.upcase, plateau)
puts "New rover created."

puts "Please input instructions for rover_1 (M = move forward, L = turn left, R = turn right)"
instructions_1 = gets.chomp.upcase.split('')
rover_1.read_instruction(instructions_1)

puts "Please input instructions for rover_2 (M = move forward, L = turn left, R = turn right)"
instructions_2 = gets.chomp.upcase.split('')
rover_2.read_instruction(instructions_2)


puts "#{rover_1.x} #{rover_1.y} #{rover_1.direction}"
puts "#{rover_2.x} #{rover_2.y} #{rover_2.direction}"

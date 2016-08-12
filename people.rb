class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an object!"
  end

end

class Person

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end

end

#Creating Instances of Instructor/Student

chris = Instructor.new("Chris")
chris.greeting

christina = Student.new("Christina")
christina.greeting

#Using instance methods

chris.teach
#This works because 'teach' is an instance method of Instructor

christina.teach
#This won't work because 'teach' is not an instance method of Student. It is only in the class Instructor.

#Instance method
class Student
  def initialize(name)
    @name=name
  end

  def say_hello
    puts "Hi,I'm #{@name}"
  end
end

s1=Student.new("Pranali")
s1.say_hello

#Calling a Class Method from an Instance Method
class MathTool
  def double(x)
    puts "Double is #{x*2}"
    puts "Square is #{MathTool.square(x)}"
  end
  def self.square(x)
    x*x
  end
end
tool=MathTool.new
tool.double(2)
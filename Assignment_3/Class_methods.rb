#Class methods
class Student
  @@count=0
  def initialize(name)
    @name=name
    @@count+=1
  end
  def self.total_students
    puts "Total student:#{@@count}"
  end
end
Student.new("Pranali")
Student.new("Priya")
Student.total_students

#Calling Instance methods from Class methods
class Greeting
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hi, #{@name}!"
  end

  def self.greet_all(names)
    names.each do |n|
      Greeting.new(n).say_hi
    end
  end
end

Greeting.greet_all(["Alice", "Bob"])

class Human
  def indentity
    puts "I am a human"
  end
end

class Student<Human
  def indentity
    super
    puts "I am a Student too"
  end
end

student=Student.new
student.indentity
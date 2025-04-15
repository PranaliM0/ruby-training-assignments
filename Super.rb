class Human
  def Indentity
    puts "I am a human"
  end
end
class Student<Human
  def Indentity
    super
    puts "I am a Student too"
  end
end
student=Student.new
student.Indentity
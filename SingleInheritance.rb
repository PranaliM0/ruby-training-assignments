class Animal
  def speak
    puts "Animal Sound"
  end
end
class Dog<Animal
  def speak
    puts "Woof"
  end
end
dog=Dog.new
dog.speak
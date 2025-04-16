class Animal
  def speak
    puts "Animal sound"
  end
end

class Dog<Animal
  def speak 
    puts "Woof!"
  end
end

class Cat<Animal
  def speak
    puts "Meow!"
  end
end

dog=Dog.new
dog.speak

cat=Cat.new
cat.speak
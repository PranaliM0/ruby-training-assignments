class Animal
  def speak
    puts "Animal speaking"
  end
end

class Dog<Animal
  def bark
    puts "Dog Barking"
  end
end

class Puppy<Dog
  def play
    puts "Puppy is Playing"
  end
end

puppy=Puppy.new
puppy.speak
puppy.bark
puppy.play

p Animal.ancestors
p Dog.ancestors
p Puppy.ancestors
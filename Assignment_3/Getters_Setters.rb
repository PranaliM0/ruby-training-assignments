class Person
  def initialize(name)
    @name=name
  end

  #Getter
  def name
    @name
  end

  #Setter
  def name=(new_name)
    @name=new_name
  end
end
p=Person.new("Pranali")
puts p.name
p.name="Priya" 
puts p.name

#Shorthand way
class Person
  attr_accessor :name
  def initialize(name)
    @name=name
  end
end
p=Person.new("Pranali")
puts p.name
p.name="Priya" 
puts p.name
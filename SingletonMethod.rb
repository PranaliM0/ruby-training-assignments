# dog="Rex"
# def dog.name
#   puts "hello,my name is #{self}"
# end
# dog.name

class Person
  def greet
    puts "Hello"
  end
end
p1=Person.new
p1.greet
p2=Person.new
def p2.say_name
  puts "Hello I am P2"
end
p2.say_name

#p Person.ancestors
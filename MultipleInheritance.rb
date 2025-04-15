module Swimmable
  def swim
    puts "Swimming!"
  end
end
module Flyable
  def fly
    puts "Flying!"
  end
end
class Duck
  include Swimmable
  include Flyable
end
duck=Duck.new
duck.swim
duck.fly


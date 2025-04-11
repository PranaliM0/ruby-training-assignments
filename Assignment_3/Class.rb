#Basic class
class Car
  def initialize(brand, color)
    @brand = brand    
    @color = color
  end

  def drive
    puts "The #{@color} #{@brand} is driving."
  end
end

#Ruby does not support method overloading (like in Java or C++). That means you can’t have multiple initialize methods with different argument lists.
class Book
  def initialize(title="2025",author="Amitabh Kant")
    @title=title
    @author=author
  end
  def info
    puts "#{@title} by #{@author}"
  end
end

book1=Book.new("1984","George Orwell")
book2=Book.new
book1.info
book2.info

#Using variable arguments 
class Arguments
  def initialize(*args)
    if args.length==1
      puts "One argument: #{args[0]}"
    elsif args.length==2
      puts "Two arguments: #{args[0]},#{args[1]}"
    else
      puts "No or too many arguments"
    end
  end
end
Arguments.new("Hello")
Arguments.new("Hello","World")
Arguments.new
puts "Enter number:"
num=gets.chomp.to_i

if num<2
  puts "#{num} is not prime"
elsif num==2
  puts "#{num} is prime"
end
for i in (2...num)
  if num%i==0
    puts "#{num} is not prime"
    break
  else
    puts "#{num} is prime"
    break
  end
end

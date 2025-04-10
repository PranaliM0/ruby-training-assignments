puts "Enter number:"
grade=gets.chomp.to_i
case grade
when 1..5
  puts "elementary"
when 6..8
  puts "middle school"
when 9..12
  puts "high school"
else
  puts "college"
end


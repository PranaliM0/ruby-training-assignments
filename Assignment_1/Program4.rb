#Mobile Regex
mobile_regex = /^\d{10}$/
puts "1234567890".match?(mobile_regex)  
puts "+1 (123) 456-7890".match?(mobile_regex)  
puts "12345".match?(mobile_regex)  
#Email Regex
email_regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
puts "example@example.com".match?(email_regex) 
puts "example@com".match?(email_regex)  
#Name Regex
name_regex = /^[a-zA-Z\s\-]+$/
puts "John Doe".match?(name_regex)  
puts "Mary-Jane".match?(name_regex)  
puts "1234".match?(name_regex)  
#Gender Regex
gender_regex = /^[MF]$/
puts "M".match?(gender_regex)  
puts "F".match?(gender_regex)  
puts "Male".match?(gender_regex)  
#Amount Regex
amount_regex = /^\d{1,3}(?:,\d{3})*(?:\.\d{2})?$/
puts "1,234.56".match?(amount_regex)  
puts "1000".match?(amount_regex)  
puts "1,000,000.99".match?(amount_regex)  
puts "1234.567".match?(amount_regex)  
puts "1000.123".match?(amount_regex) 

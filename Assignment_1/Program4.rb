# Mobile Regex
mobile_regex = /^\d{10}$/
puts "Enter a mobile number:"
mobile_input = gets.chomp
puts mobile_input.match?(mobile_regex) ? "Valid mobile number" : "Invalid mobile number"

# Email Regex
email_regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
puts "Enter an email address:"
email_input = gets.chomp
puts email_input.match?(email_regex) ? "Valid email address" : "Invalid email address"

# Name Regex
name_regex = /^[a-zA-Z\s\-]+$/
puts "Enter a name:"
name_input = gets.chomp
puts name_input.match?(name_regex) ? "Valid name" : "Invalid name"

# Gender Regex
gender_regex = /^[MF]$/
puts "Enter gender (M/F):"
gender_input = gets.chomp
puts gender_input.match?(gender_regex) ? "Valid gender" : "Invalid gender"

# Amount Regex
amount_regex = /^\d{1,3}(?:,\d{3})*(?:\.\d{2})?$/
puts "Enter an amount (e.g. 1,234.56):"
amount_input = gets.chomp
puts amount_input.match?(amount_regex) ? "Valid amount" : "Invalid amount"

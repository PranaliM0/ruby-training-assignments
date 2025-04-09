def ip_class(ip)
  octets = ip.split('.')

  if octets.length != 4
    return "Invalid IP address"
  end

  first_octet = octets[0].to_i

  case first_octet
  when 1..127
    return "Class A"
  when 128..191
    return "Class B"
  when 192..223
    return "Class C"
  when 224..239
    return "Class D (Multicast)"
  when 240..255
    return "Class E (Reserved)"
  else
    return "Invalid IP address"
  end
end

puts "Enter an IP address:"
ip_address = gets.chomp

puts "The IP address class is: #{ip_class(ip_address)}"

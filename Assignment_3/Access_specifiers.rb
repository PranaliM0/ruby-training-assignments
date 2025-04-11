class AccessSpecifiers
  def public_method
    puts "I'm public"
  end
  protected
  def protected_method
    puts "I'm protected"
  end
  private
  def private_method
    puts "I'm private"
  end
end
access_specifier=AccessSpecifiers.new
access_specifier.public_method
#access_specifier.private_method --not called outside class
#access_specifier.protected_method --not called outside class
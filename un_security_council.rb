module UnSecurityCouncil
  UN_SECURITY_ARMY_STRENGTH = 500_000
  UN_SECURITY_GDP_THRESHOLD = 2_000_000

  def un_security_council_eligibility?
    if @army_strength > UN_SECURITY_ARMY_STRENGTH && @gdp > UN_SECURITY_GDP_THRESHOLD
      "#{@name} is eligible for UN Security Council Seat"
    else
      "#{@name} is not eligible for Seat"
    end
  end
end

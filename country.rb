module LoanEligibility
  def loan_eligibility?
    if @gdp<1000 && @development_status=='developing'
      "#{@name} is eligible for IMF or World Bank loan"
    else
      "#{@name} is not eligible for loan"
    end
  end
end
module UnSecurityCouncil
  def un_security_council_eligibility?
    if @army_strength>500_000 && @gdp > 2_000_000
      "#{@name} is eligible for UN Security Council Seat"
    else
      "#{@name} is not Eligible for Seat"
    end
  end
end
module WarPrediction
  def war_outcome
    if @army_strength >1_000_000 && @gdp >3_000_000
      "#{@name} can likely win the war"
      else
        "#{@name} is likely to lose the war"
    end
  end
end


class Country
  include LoanEligibility
  include UnSecurityCouncil
  include WarPrediction

  attr_accessor :name,:population,:gdp,:states,:army_strength,:development_status,:region

  def initialize(name,population,gdp,states,army_strength,development_status,region)
    @name=name
    @population=population
    @gdp=gdp
    @states=states
    @army_strength=army_strength
    @development_status=development_status
    @region=region
  end
end
$all_countries=[]
def find_country(name)
  $all_countries.find {|c| c.name.downcase == name.downcase}    
end

def menu
  loop do
    puts "\n=== Country Intelligence CLI ==="
    puts "1. Add new country"
    puts "2. Check loan eligibility"
    puts "3. Check UN Security Council eligibility"
    puts "4. Predict war outcome"
    puts "5. List all countries"
    puts "6. Exit"
    print "Choose an option: "
    choice=gets.chomp.to_i

    case choice
    when 1
      add_country
    when 2
      check_loan
    when 3
      check_un
    when 4
      predict_war
    when 5
      list_countries
    when 6
      puts "Exiting!!"
      break
    else
      puts "Invalid choice!!"
    end
  end
end

def add_country
  print "Enter country name:"
  name=gets.chomp
  print "Enter population: "
  population = gets.chomp.to_i
  print "Enter GDP (in millions USD): "
  gdp = gets.chomp.to_i
  print "Enter number of states: "
  states = gets.chomp.to_i
  print "Enter army strength: "
  army = gets.chomp.to_i
  print "Enter development status (developed/developing): "
  status = gets.chomp.downcase
  print "Enter region: "
  region = gets.chomp

  country=Country.new(name, population, gdp, states, army, status, region)
  $all_countries << country
  puts "\n Country added: #{country.name}"
end

def  check_loan
  print "Enter country name:"
  name=gets.chomp
  country=find_country(name)
  puts country ? country.loan_eligibility? : "Country not found."
end

def predict_war
  print "Enter country name: "
  name = gets.chomp
  country = find_country(name)
  puts country ? country.war_outcome : "Country not found."
end

def check_un
  print "Enter country name:"
  name=gets.chomp
  country=find_country(name)
  puts country ? country.un_security_council_eligibility? : "Country not found."
end

def list_countries
  if $all_countries.empty?
    puts "No countries in the system yet."
  else
    puts "\n List of countries:"
    $all_countries.each_with_index do |c,i|
      puts "#{i+1}. #{c.name} (#{c.development_status.capitalize},GDP: #{c.gdp}M)"
    end
  end
end

menu





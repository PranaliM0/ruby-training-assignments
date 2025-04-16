require_relative 'loan_eligibility'  
require_relative 'un_security_council'  
require_relative 'war_prediction'  

class Country
  include LoanEligibility
  include UnSecurityCouncil
  include WarPrediction

  attr_accessor :name, :population, :gdp, :states, :army_strength, :development_status, :region

  def initialize(name, population, gdp, states, army_strength, development_status, region)
    @name = name
    @population = population
    @gdp = gdp
    @states = states
    @army_strength = army_strength
    @development_status = development_status
    @region = region
  end
end

module WarPrediction
  WAR_ARMY_STRENGTH_THRESHOLD = 1_000_000
  WAR_GDP_THRESHOLD = 3_000_000

  def war_outcome
    if @army_strength > WAR_ARMY_STRENGTH_THRESHOLD && @gdp > WAR_GDP_THRESHOLD
      "#{@name} can likely win the war"
    else
      "#{@name} is likely to lose the war"
    end
  end
end

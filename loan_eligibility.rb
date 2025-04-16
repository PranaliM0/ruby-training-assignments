module LoanEligibility
  LOAN_GDP_THRESHOLD = 1000
  LOAN_DEVELOPMENT_STATUS = 'developing'

  def loan_eligibility?
    if @gdp < LOAN_GDP_THRESHOLD && @development_status == LOAN_DEVELOPMENT_STATUS
      "#{@name} is eligible for IMF or World Bank loan"
    else
      "#{@name} is not eligible for loan"
    end
  end
end

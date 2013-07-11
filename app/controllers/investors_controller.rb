class InvestorsController < ApplicationController

def index
  @investors = Investor.all
    respond_to do |format|
    format.csv 
  end

end

end

class GrouperController < ApplicationController
  def index
    @all_input = Resultsave.all

  end
  
  def result_save
    
    resultsaveModel = Resultsave.new
    resultsaveModel.team1 = params[:team1]
    resultsaveModel.team2 = params[:team2]
    resultsaveModel.team3 = params[:team3]
    resultsaveModel.tutor1 = params[:tutor1]
    resultsaveModel.tutor2 = params[:tutor2]
    resultsaveModel.tutor3 = params[:tutor3]
    
    resultsaveModel.save
    redirect_to '/grouper/index'
    
    # 모델명 : resultsave
  end


end
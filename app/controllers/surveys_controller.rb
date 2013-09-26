class SurveysController < ApplicationController
  def new
    @survey = Survey.new
    3.times do 
      @survey.questions << Question.new
    end
  end

  def create
    p '*' * 100
    p params
    p '*' * 100
    @survey = Survey.create( params[:survey] )
    redirect_to survey_path(@survey)
  end

  def index
  end

  def show
    p '*' * 80
    p params
    p '*' * 80
    @survey = Survey.find(params[:id])
  end

  def update
    p '%' * 100
    p params
    @survey = Survey.find(params[:id])
    @survey.update_attributes(params[:survey][:title])
  end
end

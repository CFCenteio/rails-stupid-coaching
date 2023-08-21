class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answer = params[:answer]
    if @answer == "I am going to work"
      @to_view = "Great!"
    elsif @answer[-1] == "?"
      @to_view = "Silly question, get dressed and go to work!"
    else
      @to_view = "I don't care, get dressed and go to work!"
    end
  end
end

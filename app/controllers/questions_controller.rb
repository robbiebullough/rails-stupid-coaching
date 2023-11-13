class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    @question = params[:question].capitalize
    if @question.strip.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.strip[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

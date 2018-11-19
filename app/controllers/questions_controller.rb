class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params["questions"]
    case @questions
    when "I am going to work"
      @answer = "Great!"
    when /\w*\W\z/
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def home
  end
end

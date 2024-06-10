class QuestionsController < ApplicationController

  def index
  end

  def ask
  end

  def answer
   if params[:question] == "I am going to work"
     @answer = "Great!"
   elsif params[:question] == params[:question].upcase
     @answer = "I can feel your motivation! I don't care, get dressed and go to work!"
   elsif params[:question].include?("?")
     @answer = "Silly question, get dressed and go to work!"
   elsif params[:question].is_a?(String)
     @answer = "I don't care, get dressed and go to work!"
   end
  end

end

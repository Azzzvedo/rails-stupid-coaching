class QuestionsController < ApplicationController
  def ask
  end

  def answer
    responses = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    @response = ''
    if params[:question] == 'I am going to work'
      @response = responses[0]
    elsif params[:question][-1] == '?'
      @response = responses[1]
    else
      @response = responses[2]
    end
    @response
  end
end

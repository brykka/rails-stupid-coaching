class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # http://localhost:3000/answer?question=hi
    # p name = 'params_question'
    @questions = params['question']
    @answer = 'random answer'
    if @questions == 'I am going to work'
      @answer = 'Great!'
    elsif @questions.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

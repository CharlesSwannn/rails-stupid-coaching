class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:name]
    if params[:name].include?("?")
      @answer = "Pergunta estúpida. Veste-te e vai trabalhar."
    elsif params[:name] == "Vou trabalhar"
      @answer = "Muito bem."
    else
      @answer = "Não quero saber. Veste-te e vai trabalhar."
    end
  end
end

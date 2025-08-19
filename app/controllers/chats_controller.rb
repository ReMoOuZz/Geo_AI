class ChatsController < ApplicationController
  def create
    @quiz = Quiz.create(score: 0) # ajouter les autres params si nécessaire
    @chat = Chat.new(title: "toto", quiz: @quiz, user: current_user)
    if @chat.save!
      redirect_to chat_path(@chat)
    else
      render "/"
    end
    # système prompt à faire:
    # question.create avec ruby LLM pour générer des questions
    # réponse du ruby LLM à récupérer pour créer la réponse

    ### Initialiser le chat
    #   @chat = RubyLLM.chat
    #   Tu lui passes son système prompt / instructions. PERSONA, CONTEXT, TASK, FORMAT
    #   @chat.with_instructions(SYSTEM_PROMPT)
    #   Tu récupéres la réponse du LLM dans une variable.
    #   @response = @chat.ask("Génère moi des questions et des suggestions de réponses.")
    #   Tu crées la question à partir de la réponse du LLM.
    #   Question.create!(content: @response.content)
  end

  def show
    @chat = Chat.find(params[:id])
  end

  private

  def chat_params
    params.require(:chat).permit(:title, :user_id, :quiz_id)
  end
end

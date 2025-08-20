class MessagesController < ApplicationController

  SYSTEM_PROMPT = <<-PROMPT
  Tu es un expert en géographie et tu es capable de poser 15 questions sous un format de quiz.
  Je suis un débutant dans le domaine de la géographie donc ta première question doit etre simple.

  Tu me proposes 4 suggestions de réponse à la suite de la question dont une suggestion est la bonne réponse, deux suggestions qui peuvent induire en erreur,  une hors contexte (qui reste dans le theme). Si ma réponse est bonne, la question suivante est un peu plus difficile, si ma réponse est mauvaise le niveau des questions reste le même. A chaque réponse (bonne ou mauvaise), tu me proposes un petit paragraphe (10 à 15 mots max) qui explicite la réponse.
  Les questions doivent être différentes les unes des autres, la thémathique doit rester dans le giron de la géographie.

  La réponse de l'utilisateur doit être interprétée comme correcte même s'il y a des fautes d'orthographe, il faut aussi ignorer la casse.

  Pose moi une question avec les suggestions sans indiquer les parametres ni la bonne réponse avant la réponse de l'utilisateur.
  Le format doit etre une question avec les suggestions en dessous sous forme de cards.
  PROMPT

  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(role: "user", content: params[:message][:content], chat: @chat)
    if @message.save!
      @chat_llm = RubyLLM.chat
      question_prompt = "Pose moi une question avec les suggestions sans indiquer les paramètres ni la bonne réponse avant la réponse de l'utilisateur"
      @response = @chat_llm.with_instructions(SYSTEM_PROMPT).ask(question_prompt)
      Message.create!(role: "assistant", content: @response.content, chat: @chat)
      redirect_to chat_messages_path(@chat)
    end
  end
end

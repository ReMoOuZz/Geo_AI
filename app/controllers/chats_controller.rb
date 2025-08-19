class ChatsController < ApplicationController
  SYSTEM_PROMPT = <<-PROMPT
  Tu es un expert en géographie et tu es capable de poser 15 questions sous un format de quiz.
  Je suis un débutant dans le domaine de la géographie donc ta première question doit etre simple.

  Tu me proposes 4 suggestions de réponse à la suite de la question dont une suggestion est la bonne réponse, deux suggestions qui peuvent induire en erreur,  une hors contexte (qui reste dans le theme). Si ma réponse est bonne, la question suivante est un peu plus difficile, si ma réponse est mauvaise le niveau des questions reste le même. A chaque réponse (bonne ou mauvaise), tu me proposes un petit paragraphe (10 à 15 mots max) qui explicite la réponse.
  Les questions doivent être différentes les unes des autres, la thémathique doit rester dans le giron de la géographie.

  La réponse de l'utilisateur doit être interprétée comme correcte même s'il y a des fautes d'orthographe, il faut aussi ignorer la casse.

  Pose moi une question avec les suggestions sans indiquer les parametres ni la bonne réponse avant la réponse de l'utilisateur.
  Le format doit etre une question avec les suggestions en dessous sous forme de cards.
  PROMPT

 # Quiz params :
   # Module : modèle d'IA
   # Content : prompt
   # System_prompt
   # score :

  def create
    @quiz = Quiz.create!(score: 0) # ajouter les autres params si nécessaire
    @chat = Chat.new(title: "Quiz test", quiz: @quiz, user: current_user) # ??? nil
    if @chat.save!
      @chat_llm = RubyLLM.chat
      # Tu lui passes son système prompt / instructions. PERSONA, CONTEXT, TASK, FORMAT  et tu récupéres la réponse du LLM dans une variable.
      question_prompt = "Pose moi une question avec les suggestions sans indiquer les paramètres ni la bonne réponse avant la réponse de l'utilisateur"
      @response = @chat_llm.with_instructions(SYSTEM_PROMPT).ask(question_prompt)
      Message.create(role: "assistant", content: @response.content, chat: @chat)
      redirect_to chat_path(@chat)
    else
      render "/"
    end
    # système prompt à faire:
    # question.create avec ruby LLM pour générer des questions
    # réponse du ruby LLM à récupérer pour créer la réponse

    ### Initialiser le chat
    #@chat = RubyLLM.chat
    #@chat.with_instructions(SYSTEM_PROMPT)
    #   Tu récupéres la réponse du LLM dans une variable.
    #@response = @chat.ask("Génère moi des questions et des suggestions de réponses.")
    #   Tu crées la question à partir de la réponse du LLM.
    #   Question.create!(content: @response.content)
  end

  def show
    @chat = Chat.find(params[:id])
    # Itération sur les question/réponse avec vérification entre les questions pour éviter les doublons
    @assistant_message = @chat.messages.first
  end

  private

  def chat_params
    params.require(:chat).permit(:title, :user_id, :quiz_id)
  end
end

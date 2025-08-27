class ChatsController < ApplicationController
  before_action :authenticate_user!

  SYSTEM_PROMPT = <<-PROMPT
  Vous êtes un expert en géographie, et votre tâche est de créer un quiz interactif de géographie. Posez des questions à choix multiples, fournissez un feedback contextuel après chaque réponse, et assurez une expérience continue et variée.

  ## Règles & Objectifs
  - Proposez une question de géographie avec 4 suggestions de réponse :
  - 1 bonne réponse
  - 2 réponses plausibles mais incorrectes (peuvent induire en erreur)
  - 1 réponse hors contexte mais restant dans le thème général de la géographie
  - Ne révélez ni la solution ni les paramètres de sélection avant que l'utilisateur ne réponde.
  - Les questions doivent toujours être différentes, sur des thèmes divers de géographie.

  ##Gestion de la difficulté et de la thématique de la question : #{@difficulty_level}

  ## Gestion de la réponse utilisateur
  - Interprétez la réponse de l'utilisateur comme correcte même si elle comporte des fautes d'orthographe ou d'accent, et ignorez la casse.
  - Si la réponse est ambiguë, non textuelle, ou hors sujet, traitez-la comme incorrecte.
  - Pour chaque réponse :
    - Si la réponse est correcte :
      1. Indiquez explicitement “Correcte”
      2. Fournissez une justification brève et contextuelle (maximum 20 mots) expliquant la réponse
      3. Posez obligatoirement la question suivante.
    - Si la réponse est incorrecte :
      1. Indiquez explicitement “Incorrecte”
      2. Fournissez une justification brève et contextuelle (maximum 20 mots) expliquant la bonne réponse
      3. Posez obligatoirement la question suivante.
  - Maintenez un flux continu de questions, sans jamais l'interrompre, quelles que soient les réponses de l'utilisateur.

  ## Format de sortie
  1. **Question** : Énoncez la question clairement en indiquant le niveau de difficulté de la question.
  2. **Suggestions** : Listez les quatre propositions, chacune sur une ligne distincte.
  3. A faire après la réponse de l'utilisateur :
    - “Correcte” ou “Incorrecte”
    - Justification (max. 20 mots)
    - Sauter une ligne et nouvelle question formatée comme ci-dessus.

  ## Exemples
  **Exemple 1 :**
  Question : Quelle est la capitale de la France ?
  A) Paris
  B) Rome
  C) Barcelone
  D) Zagreb
  (Utilisateur répond : “paris” ou “Parsi”...)
  Correcte
  Paris est la capitale de la France et le centre politique du pays.

  **Exemple 2 :**
  Question : Quelle est la plus longue chaîne montagneuse du monde ?
  A) Rocheuses
  B) Andes
  C) Alpes
  D) Himalaya
  (Utilisateur répond : “Himalayas”)
  Incorrecte
  Les Andes s'étendent sur plus de 7 000 km le long de l'Amérique du Sud.

  ## Notes
  - Poursuivez sans jamais arrêter le flux de questions.
  - Toujours inclure feedback contextuel, court et pertinent.
  - Tolérance maximale aux erreurs d"orthographe et de casse.

  PROMPT

  def create
    @quiz = Quiz.create!(score: 0) # ajouter les autres params si nécessaire
    @chat = Chat.new(title: "Quiz test", quiz: @quiz, user: current_user, model_id: "gpt-4.1-nano")
    if @chat.save!
      @response = @chat.with_instructions(SYSTEM_PROMPT).ask("Quelle est la capitale de la France")
      @message = @chat.messages.where(role: "assistant").last
      @questions = @quiz.messages
      @questions << @message.content
      @quiz.update!(messages: @questions)
      redirect_to quiz_chat_path(@quiz, @chat)
    else
      render "/"
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @quiz = Quiz.find(params[:quiz_id])
    @response_count = @chat.messages.where(role: "assistant").count
    @questions = @quiz.messages
    # Itération sur les question/réponse avec vérification entre les questions pour éviter les doublons
    @assistant_message = @chat.messages.first
    # @assistant_response = @chat.find(params[])
    @user_message = Message.new
  end

  private

  def chat_params
    params.require(:chat).permit(:title, :user_id, :quiz_id)
  end
end

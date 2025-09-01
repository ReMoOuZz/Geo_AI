class MessagesController < ApplicationController
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
      1. Indiquez explicitement “Correct”
      2. Fournissez une justification brève et contextuelle (maximum 20 mots) expliquant la réponse
      3. Posez obligatoirement la question suivante.
    - Si la réponse est incorrecte :
      1. Indiquez explicitement “Incorrect”
      2. Fournissez une justification brève et contextuelle (maximum 20 mots) expliquant la bonne réponse
      3. Posez obligatoirement la question suivante.
  - Maintenez un flux continu de questions, sans jamais l'interrompre, quelles que soient les réponses de l'utilisateur.

  ## Format de sortie

  (si la réponse est correct :
  <h2 style="color: green;"><strong>Correct</strong></h2>
  <p class="contexte">Justification brève</p>

  si la réponse est incorrect :
  <h2 style="color: red;"><strong>Incorrect</strong></h2>
  <p class="contexte">Justification brève</p>)

  <h2 class="question-title">(ta question)</h2>

  <div class="suggestion-list">
    <ul class="suggestion-grid">
      <li><strong>tes suggestions</strong></li>
      <li><strong>tes suggestions</strong></li>
      <li><strong>tes suggestions</strong></li>
      <li><strong>tes suggestions</strong></li>
    </ul>
  </div>

  <p class="next-question">Petit paragraphe pour demander a l'utilisateur de répondre</p>

  ## Notes
  - Poursuivez sans jamais arrêter le flux de questions.
  - Toujours inclure feedback contextuel, court et pertinent.
  - Tolérance maximale aux erreurs d"orthographe et de casse.

  PROMPT

  def create
    @chat = Chat.find(params[:chat_id])
    @quiz = @chat.quiz
    @message = Message.new(role: "user", content: params[:message][:content], chat: @chat)

    if @message.valid?
      @response = @chat.with_instructions(instructions).with_temperature(0.3).ask(@message.content)
      @assistant_message = @chat.messages.where(role: "assistant").last
      @questions = @quiz.messages

      @quiz.increment!(:score) if @chat.messages.last.content =~ /\bCorrect\b/i

      @response_count = @chat.messages.where(role: "assistant").count

      @questions << @assistant_message.content
      @quiz.update!(messages: @questions)
      redirect_to quiz_chat_path(@quiz, @chat)
    else
      render "chats/show"
    end
  end

  private

  def question_prompt
    "Voici l'array initial des questions déjà posées: #{@quiz.messages}"
  end

  def instructions
    [SYSTEM_PROMPT, question_prompt, increment_difficulty].compact.join("\n\n")
  end

  def increment_difficulty
    if @quiz.score == 0
      @difficulty_level = "Quelle est la capitale de la France ?"
    elsif @quiz.score == 1
      @difficulty_level = "capitales européennes, pays connus, drapeaux évidents"
    elsif @quiz.score == 2
      @difficulty_level = "grandes chaînes de montagnes, mers/océans, monuments célèbres"
    elsif @quiz.score == 3
      @difficulty_level = "frontières précises, fleuves, régions, pays d'origine de personnalités"
    elsif @quiz.score == 4
      @difficulty_level = "langues régionales, reliefs moins connus, démographie"
    else
      @difficulty_level = "toponymie fine, micro-États, détails historiques-géo complexes"
    end
  end
end

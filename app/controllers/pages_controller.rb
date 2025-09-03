class PagesController < ApplicationController
  def home
    @chat = Chat.new
  end

  def profile
  end

  def stats
    @user = current_user
    @total_questions = @user.game_questions

    @answers = @user.user_answers
    @correct = @answers.joins(:game_question).where(is_correct: true)
    @incorrect = @answers.joins(:game_question).where(is_correct: false || nil)

    correct = @correct.count
    total = @total_questions.count

    @total_correct = total.positive? ? (correct.fdiv(total) * 100).round(1) : 0.0

    cat = [
      "Hydrographie et reliefs",
      "Régions et villes du monde",
      "Cultures", "Géopolitique",
      "Drapeaux"
    ]
    @correct_in_cat = @correct.where(game_questions: { category: cat })


    dif = [
      "facile",
      "intermédiaire",
      "difficile"
    ]
    @correct_in_dif = @correct.where(game_questions: { difficulty: dif })


    reg = [
      "Europe",
      "Amérique",
      "Océanie",
      "Afrique",
      "Asie"
    ]
    @correct_in_reg = @correct.where(game_questions: { region: reg })


    @user_games = current_user.games.includes(:scores)
    @user_allscores = @user_games.map{|g| g.scores}.flatten
    @nb_total_game = @user_games.count

  end

end

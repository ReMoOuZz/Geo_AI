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
    incorrect = @incorrect.count
    total = @total_questions.count

    @total_correct = total.positive? ? (correct.fdiv(total) * 100).round(1) : 0.0

    cat = [
      "Hydrographie et reliefs",
      "Régions et villes du monde",
      "Cultures",
      "Géopolitique",
      "Drapeaux"
    ]
    @correct_in_cat = @correct.where(game_questions: { category: cat })

    @correct_in_cat_hr = @correct.where(game_questions: { category: "Hydrographie et reliefs" })
    @incorrect_in_cat_hr = @incorrect.where(game_questions: { category: "Hydrographie et reliefs" })
    @total_correct_hr = incorrect.positive? ? (@correct_in_cat_hr.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_cat_rv = @correct.where(game_questions: { category: "Régions et villes du monde" })
    @incorrect_in_cat_rv = @incorrect.where(game_questions: { category: "Régions et villes du monde" })
    @total_correct_rv = incorrect.positive? ? (@correct_in_cat_rv.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_cat_cl = @correct.where(game_questions: { category: "Cultures" })
    @incorrect_in_cat_cl = @incorrect.where(game_questions: { category: "Cultures" })
    @total_correct_cl = incorrect.positive? ? (@correct_in_cat_cl.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_cat_gp = @correct.where(game_questions: { category: "Géopolitique" })
    @incorrect_in_cat_gp = @incorrect.where(game_questions: { category: "Géopolitique" })
    @total_correct_gp = incorrect.positive? ? (@correct_in_cat_gp.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_cat_dp = @correct.where(game_questions: { category: "Drapeaux" })
    @incorrect_in_cat_dp = @incorrect.where(game_questions: { category: "Drapeaux" })
    @total_correct_dp = incorrect.positive? ? (@correct_in_cat_dp.count.fdiv(total) * 100).round(1) : 0.0

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

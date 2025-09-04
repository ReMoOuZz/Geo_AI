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
    @incorrect = @answers.joins(:game_question).where(is_correct: false)

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

    @correct_in_dif_f = @correct.where(game_questions: { difficulty: "facile" })
    @incorrect_in_dif_f = @incorrect.where(game_questions: { difficulty: "facile" })
    @total_correct_dif_f = incorrect.positive? ? (@correct_in_dif_f.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_dif_i = @correct.where(game_questions: { difficulty: "intermédiaire" })
    @incorrect_in_dif_i = @incorrect.where(game_questions: { difficulty: "intermédiaire" })
    @total_correct_dif_i = incorrect.positive? ? (@correct_in_dif_i.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_dif_d = @correct.where(game_questions: { difficulty: "difficile" })
    @incorrect_in_dif_d = @incorrect.where(game_questions: { difficulty: "difficile" })
    @total_correct_dif_d = incorrect.positive? ? (@correct_in_dif_d.count.fdiv(total) * 100).round(1) : 0.0


    reg = [
      "Europe",
      "Amérique",
      "Océanie",
      "Afrique",
      "Asie"
    ]
    @correct_in_reg = @correct.where(game_questions: { region: reg })

    @correct_in_reg_eu = @correct.where(game_questions: { region: "Europe" })
    @incorrect_in_reg_eu = @incorrect.where(game_questions: { region: "Europe" })
    @total_correct_reg_eu = incorrect.positive? ? (@correct_in_reg_eu.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_reg_am = @correct.where(game_questions: { region: "Amérique" })
    @incorrect_in_reg_am = @incorrect.where(game_questions: { region: "Amérique" })
    @total_correct_reg_am = incorrect.positive? ? (@correct_in_reg_am.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_reg_oc = @correct.where(game_questions: { region: "Océanie" })
    @incorrect_in_reg_oc = @incorrect.where(game_questions: { region: "Océanie" })
    @total_correct_reg_oc = incorrect.positive? ? (@correct_in_reg_oc.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_reg_af = @correct.where(game_questions: { region: "Afrique" })
    @incorrect_in_reg_af = @incorrect.where(game_questions: { region: "Afrique" })
    @total_correct_reg_af = incorrect.positive? ? (@correct_in_reg_af.count.fdiv(total) * 100).round(1) : 0.0

    @correct_in_reg_as = @correct.where(game_questions: { region: "Asie" })
    @incorrect_in_reg_as = @incorrect.where(game_questions: { region: "Asie" })
    @total_correct_reg_as = incorrect.positive? ? (@correct_in_reg_as.count.fdiv(total) * 100).round(1) : 0.0

    @user_games = current_user.games.includes(:scores)
    @user_allscores = @user_games.map{|g| g.scores}.flatten
    @nb_total_game = @user_games.count
  end
end

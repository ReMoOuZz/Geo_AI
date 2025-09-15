class ScoresController < ApplicationController
  def show
    @score = Score.find(params[:id])
    @awarded_badges = current_user.badges.where(id: Array(flash[:awarded_badge_ids]))
  end
end

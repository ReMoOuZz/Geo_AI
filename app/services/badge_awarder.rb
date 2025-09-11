class BadgeAwarder
  def self.award_for(score)
    new(score).call
  end

  def initialize(score)
    @score = score
    @user = score.user
    @game = score.game
  end

  def call
    percentage = compute_percentage
    names = compute_badge_names(percentage, @game)
    names.map { |name| create_badge(name) }
  end

  private

  def compute_percentage
    total = @game.game_questions.count
    return 0 if total.zero?
    ((@score.value.to_f / total) * 100).round
  end

  def compute_badge_names(percentage, game)
    names = []

    if percentage == 100
        names << "Diamant"
    elsif percentage >= 80
        names << "Médaille d'or"
    elsif percentage >= 60
        names << "Médaille d'argent"
    elsif percentage >= 30
        names << "Médaille de bronze"
    else
        names << "Poop"
    end

    if percentage >= 80
      case game.category
      when "Hydrographie et reliefs"
      names << "Montagnard"
      when "Drapeaux"
      names << "Roi de la colline"
      when "Régions et villes du monde"
      names << "Capitaliste"
      when "Géopolitique"
      names << "Diplomate"
      when "Cultures"
      names << "Culturiste"
      end
    end

  failed_games = @user.scores.where("scores.value < ?", 3).count
    names << "Serial Crotteur" if failed_games == 5

    names

  end

  def create_badge(name)
    @user.badges.create!(
      name: name,
      icon: icon_for(name),
      description: description_for(name),
      earned_at: Time.current
    )
  end

  def icon_for(name)
  {
    "Diamant" => "fa-gem",
    "Médaille d'or" => "fa-medal",
    "Médaille d'argent" => "fa-medal",
    "Médaille de bronze" => "fa-medal",
    "Poop" => "fa-poo",
    "Montagnard" => "fa-person-hiking",
    "Roi de la colline" => "fa-flag",
    "Capitaliste" => "fa-building-columns",
    "Diplomate" => "fa-helmet-un",
    "Culturiste" => "fa-language",
    "Serial Crotteur" => "fa-poo-storm"
  }[name]
  end

  def description_for(name)
    {
      "Diamant" => "100% de bonnes réponses",
      "Médaille d'or" => "≥ 80% de bonnes réponses",
      "Médaille d'argent" => "≥ 60% de bonnes réponses",
      "Médaille de bronze" => "≥ 30% de bonnes réponses",
      "Poop" => "< 30% de bonnes réponses",
      "Montagnard" => "≥ 80% en Hydrographie et reliefs",
      "Roi de la colline" => "≥ en Drapeaux",
      "Capitaliste" => "≥ 80% en Régions et villes du monde",
      "Diplomate" => "≥ en Géopolitique",
      "Culturiste" => "≥ 80% en cultures",
      "Serial Crotteur" => "5 echecs < 3 bonnes réponses"
    }[name]
  end
end

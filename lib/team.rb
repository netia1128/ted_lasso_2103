class Team
  attr_reader :name,
              :coach,
              :players

  attr_accessor :eliminated

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
  end

  def eliminated?
    eliminated
  end

  def total_salary
    players.sum do |player|
      player.salary
    end
  end

  def capitan
    players.max_by do |player|
      player.salary
    end.name
  end

  def positions_filled
    players.map do |player|
      player.position
    end
  end
end

class League
  attr_reader :name,
              :players,
              :teams

  def initialize(name)
    @name = name
    @players = []
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def add_team(team)
    @teams << team
  end

  def capitans
    teams.map do |team|
      team.players.max_by do |player|
        player.salary
      end
    end
  end

  def players_by_team
    hash = {}
    @teams.each do |team|
      hash[team] = team.players.map do |player|
                    player.name
                  end
    end
    hash
  end

  def make_players_array
    @teams.map do |team|
      team.players.map do |player|
        player.name
      end
    end
  end
end

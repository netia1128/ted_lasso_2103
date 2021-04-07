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

  def most_expensive_player
    capitans.max_by do |player|
      player.salary
    end
  end

  def players_by_salary_range
    hash = {}
    count = 0
    top_bracket = (most_expensive_player.salary / 1_000_000) + 1
    top_bracket.times do
      hash["Over #{count}M"] = players_in_bracket(count)
      count += 1
    end
    hash
  end

    def players_in_bracket(count)
      players_in_bracket = []
      @teams.each do |team|
        team.players.each do |player|
          if player.salary >= count * 1000000 && player.salary < (count + 1) * 1000000
            players_in_bracket << player.name
          end
        end
      end
      players_in_bracket
    end
  end

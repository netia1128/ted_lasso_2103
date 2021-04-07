class Player
  attr_reader :name,
              :position,
              :salary

  def initialize(player_info_hash)
    @name = player_info_hash[:name]
    @position = player_info_hash[:position]
    @salary = player_info_hash[:salary]
  end
end

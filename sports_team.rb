class SportsTeam

  attr_accessor :team_name, :players, :coach_name, :team_points

  def initialize(team_name, players, coach_name, team_points)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @team_points = team_points
  end

#   def team_name()
#     return @team_name
#   end
#
#   def players()
#     return @players
#   end
#
#   def coach_name()
#     return @coach_name
#   end
# def set_coach_name(name)
#   @coach_name = name
# end

  def add_player(name)
    @players << name
  end

  def check_player_name(player)
    return @players.include?(player)
  end

end

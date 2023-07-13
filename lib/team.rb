class Team
  attr_reader :team_name, :location, :roster, :player_count, :long_term_players
  attr_accessor :contract_length
  def initialize(team_name, location)
    @team_name = team_name
    @location = location
    @roster = []
    @player_count = 0
    @long_term_players = []
    @short_term_players = []
  end

  def add_player(new_player)
    @roster << new_player
    @player_count += 1
  end

  def long_term_players
    players = @roster
    long_term = []
    players.each do |player|
      if player.contract_length >= 24
        long_term << player
      end
      long_term
    end
  end

  # def total_value
  #   @total_cost * @player_count
  # end
end
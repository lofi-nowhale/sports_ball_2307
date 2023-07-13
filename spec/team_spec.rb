require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a(Team)
  end

  it 'has readable attributes' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.team_name).to eq("Dodgers")
    expect(team.location).to eq("Los Angeles")
    expect(team.roster).to eq([])
    expect(team.player_count).to eq(0)
  end

  describe '#add_player' do
   it 'can add a player to the team' do
    team = Team.new("Dodgers", "Los Angeles")

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_1).to be_a(Player)
    expect(player_2).to be_a(Player)

    team.add_player(player_1)
    expect(team.roster).to eq([player_1])
    expect(team.player_count).to eq(1)
    team.add_player(player_2)
    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
   end
  end

  describe '#long_term_players' do
    it 'can return an array of long term players; with terms of at least 2 years' do
      team = Team.new("Dodgers", "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
    
      expect(team.long_term_players).to eq([player_1, player_3])
    end
  end

  describe '#short_term_players' do 
    it 'can return an array of short term players; with terms LESS than 2 years' do
      
    end
    
  end

  # describe '#total_value' do 
  #   it 'can return the total value of the team' do
  #     team = Team.new("Dodgers", "Los Angeles")

  #     player_1 = Player.new("Michael Palledorous" , 1000000, 36)
  #     player_2 = Player.new("Kenny DeNunez", 500000, 24)
  #     player_3 = Player.new("Alan McClennan", 750000, 48)
  #     player_4 = Player.new("Hamilton Porter", 100000, 12)
  #     expect(team.total_value).to eq(85200000)
  #   end
  # end
  
end


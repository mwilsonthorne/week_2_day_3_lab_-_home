require("minitest/autorun")
require_relative("../rugby_team.rb")
require_relative("../rugby_player.rb")

class RugbyTeamTest < Minitest::Test

def setup
  @player1 = RugbyPlayer.new("Greg", 32, 85)
  player2 = RugbyPlayer.new("Huw", 23, 100)
  player3 = RugbyPlayer.new("John", 31, 110)
  player4 = RugbyPlayer.new("Stuart", 25, 95)
  playing_squad = [@player1, player2, player3, player4]
  @rugby_team = RugbyTeam.new("Scotland", playing_squad)
  @player = RugbyPlayer.new("Tommy", 29, 95)
end

def test_rugby_team_name
  assert_equal("Scotland", @rugby_team.name)
end

def test_playing_squad_available
  assert_equal(Array, @rugby_team.squad.class)
end

def test_add_a_player_to_playing_squad()
  @rugby_team.add_a_player_to_playing_squad(@player1)
  assert_equal(5, @rugby_team.squad.length)
end

def test_remove_a_player_from_playing_squad()
  @rugby_team.remove_a_player_from_playing_squad(@player1)
  assert_equal(3, @rugby_team.squad.count)
end 
end

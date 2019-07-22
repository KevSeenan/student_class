require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup()
    @sports_team = SportsTeam.new("Unseen Academicals FC", ["Mustrum Ridcully", "The Librarian", "Rincewind"], "Ponder Stibbons", 0)
  end

  def test_team_name()
    assert_equal("Unseen Academicals FC", @sports_team.team_name)
  end

  def test_players_names()
    assert_equal(["Mustrum Ridcully", "The Librarian", "Rincewind"], @sports_team.players)
  end

  def test_coach_name()
    assert_equal("Ponder Stibbons", @sports_team.coach_name)
  end

  def test_set_coach_name()
    @sports_team.coach_name=("The Bursar")
    assert_equal("The Bursar", @sports_team.coach_name)
  end

  def test_add_player()
    @sports_team.add_player("Trevor Likely")
    assert_equal(["Mustrum Ridcully", "The Librarian", "Rincewind", "Trevor Likely"], @sports_team.players)
  end

  def test_check_player_name__true()
    assert_equal(true, @sports_team.check_player_name("Mustrum Ridcully"))
  end

  def test_check_player_name__false()
    assert_equal(false, @sports_team.check_player_name("Samuel Vimes"))
  end

  def test_team_points()

    assert_equal(0, @sports_team.team_points)
  end

end

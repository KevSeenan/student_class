require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup()
    @sports_team = SportsTeam.new("Unseen Academicals FC", ["Mustrum Ridcully", "The Librarian", "Rincewind"], "Ponder Stibbons")
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
    @sports_team.set_coach_name("The Bursar")
    assert_equal("The Bursar", @sports_team.coach_name)
  end

end

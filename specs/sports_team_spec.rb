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

end
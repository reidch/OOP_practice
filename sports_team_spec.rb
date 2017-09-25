require("minitest/autorun")
require("minitest/rg")
require_relative("./sports_team")

class TestSportsTeam < MiniTest::Test

	def setup()
		@sports_team = SportsTeam.new("First IV", ["Anne", "Meg", "Jo", "Jess"], "Coco", 0)
	end

	def test_name()
		assert_equal("First IV", @sports_team.name())
	end

	def test_players()
		assert_equal(["Anne", "Meg", "Jo", "Jess"], @sports_team.players())
	end

	def test_coach()
		assert_equal("Coco", @sports_team.coach())
	end

# Create a setter method to allow the coach's name to be updated
	def test_set_coach()
		@sports_team.set_coach("Bob")
		assert_equal("Bob", @sports_team.coach())
	end

# Create a method that adds a new player to the player's array
	def test_add_player()
		@sports_team.add_player("Becky")
		assert_equal(["Anne", "Meg", "Jo", "Jess", "Becky"], @sports_team.players())
	end

# Add a method that takes in a string of a player's name
# and checks to see if they are in the players array
	def test_check_for_player()
		assert_equal(false, @sports_team.check_for_player("Ruth"))
	end

# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or
# lost and updates the points property for a win.
	def test_points_for_win()
		@sports_team.points_for_win(100, (win = true))
		assert_equal(100, @sports_team.points())
	end
end

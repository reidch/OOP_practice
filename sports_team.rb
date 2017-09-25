class SportsTeam
	def initialize(name, players, coach, points)
		@name = name
		@players = players
		@coach = coach
		@points = 0
	end

	def name()
		return @name
	end

	def players()
		return @players
	end

	def coach()
		return @coach
	end

# Create a setter method to allow the coach's name to be updated
	def set_coach(new_coach)
		@coach = new_coach
	end

# Create a method that adds a new player to the player's array
	def add_player(name)
		@players << name
	end

# Add a method that takes in a string of a player's name
# and checks to see if they are in the players array
	def check_for_player(name)
		players.include?(name)
	end

# Add a points property into your class that starts at 0.
	def points()
		return @points
	end

# Create a method that takes in whether the team has won or
# lost and updates the points property for a win.
	def points_for_win(increment, result)
		@points += increment if result == true
	end
end

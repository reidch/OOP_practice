class Student
	def initialize(name, cohort_number)
		@name = name
		@cohort = cohort_number
	end

	def name()
		return @name
	end

	def cohort()
		return @cohort
	end

# Add in Setter method to update the students name
	def set_name(new_name)
		@name = new_name
	end

# Add in Setter method to update the students cohort
	def set_cohort(new_number)
		@cohort = new_number
	end

# Create a method that gets the student to talk
	def can_talk()
		return "I can talk!"
	end

# # Create a method that takes in a students favourite programming language
# # and returns it as part of a string
	def say_fave_language(fave_language)
		return "I love #{fave_language}"
	end
end

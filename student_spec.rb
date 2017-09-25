require("minitest/autorun")
require("minitest/rg")
require_relative("./student")

class TestStudent < MiniTest::Test
	
	def test_name()
		student = Student.new("Helen", 4)
		assert_equal("Helen", student.name())
	end

	def test_cohort()
		student = Student.new("Helen", 4)
		assert_equal(4, student.cohort())
	end

# Add in Setter method to update the students name
	def test_set_name()
		student = Student.new("Helen", 4)
		student.set_name("Bob")
		assert_equal("Bob", student.name())
	end

# Add in Setter method to update the students cohort
	def test_set_cohort()
		student = Student.new("Helen", 4)
		student.set_cohort(6)
		assert_equal(6, student.cohort())
	end

# Create a method that gets the student to talk
	def test_can_talk()
		student = Student.new("Helen", 4)
		student.can_talk()
		assert_equal("I can talk!", student.can_talk())
	end

# # Create a method that takes in a students favourite programming language
# # and returns it as part of a string
	def test_say_fave_language()
		student = Student.new("Helen", 4)
		student.say_fave_language("Ruby")
		assert_equal("I love Ruby", student.say_fave_language("Ruby"))
	end
end

# a program that check the current students that still studying in the college
class Student
	attr_reader :student_name, :student_age, :course_taken
	attr_accessor :grad_year

	# initialize student information
	def initialize(student_name, student_age, course_taken, grad_year)
		@student_name = student_name
		@student_age = Integer(student_age)
		@course_taken = course_taken
		@grad_year = grad_year
	end

	# calculate if student have extended year
	def extended_year(extended_default=0)
		(@grad_year.ceil + extended_default)
	end

	def extended_year=(extend_year)
		@grad_year = extend_year
	end

	def to_s
		"Student Name: #{@student_name}, Student Age: #{@student_age} Course Name: #{@course_name} Graduation Year: #{@grad_year}"
	end
end

# create new student instance
student = Student.new("ali", 32.9, "IT", 2024)

puts "Student Information"
puts "Name: #{student.student_name}"
puts "Age: #{student.student_age}"
puts "Course Name #{student.course_taken}"
puts "Graduation Year: #{student.grad_year}"

extended_year = student.extended_year()

puts "Extend Year: #{extended_year}"
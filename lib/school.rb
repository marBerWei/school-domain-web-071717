# code here!

class School

	attr_accessor :roster, :grade, :sort
	attr_accessor :name

	def initialize(name)
		@roster = {}
		@name = name 
	end

	def add_student(student,grade)
		@roster[grade] ||= []
		#if there is no value for the variable, it will assign it to whatever is 
		#after the ||=, otherwise it will become the variable 
		@roster[grade] << student
	end

	def roster=(roster)
		@roster =roster
	end 

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, student_array|
			@roster[grade] = student_array.sort
		end
	end

end
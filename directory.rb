def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def imput_students
	puts "Please enter the names of the students and their cohort"
	puts "To finish, just hit return twice"
	puts "Enter a name"
	#create an empty array
	students = []

	#get the first name 
	name = gets.chomp

	studentHeight = 1.75

	#while the name is not empty, reapeat this code
	while !name.empty? do

		puts "Enter the student cohort"

		studentCohort = gets.chomp

		if !studentCohort.empty?
			#add students hash to the array
			students << {:name => name, :cohort => studentCohort.capitalize.to_sym, :hobbies => :Hobbie, :country => :theCountry, :height => studentHeight}
		else
			students << {:name => name, :cohort => "No cohort entered".to_sym, :hobbies => :Hobbie, :country => :theCountry, :height => studentHeight}
		end
		puts "Now we have #{students.length} students"
		#get another name from user
		name = gets.chomp
	end
	students
end

def print_students(students)
	index = 0
	while index < students.length do
		student = students[index]
		puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort). This student has #{student[:hobbies]}, was born in #{student[:country]}, and is #{student[:height]} m tall.".center(100)
		index += 1
	end
end

#call methods

students = imput_students
print_header
print_students(students)
print_footer(students)
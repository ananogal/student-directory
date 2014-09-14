def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print_footer(names)
	if(names.length == 1)
		puts "Overall, we have #{names.length} great student"
	else
		puts "Overall, we have #{names.length} great students"
	end
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
		if(students.length == 1)
			puts "Now we have #{students.length} student"
		else
			puts "Now we have #{students.length} students"
		end
		
		#get another name from user
		name = gets.chomp
	end
	students
end

def print_students(students)
	new_students = students.group_by{|student| student[:cohort]}

	new_students.each  do |cohort, students_by_cohort|
		puts "Studients in cohort #{cohort}:"
		index = 0
		while index < students_by_cohort.length do
			student = students_by_cohort[index]
			puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort).".center(50)
			index += 1
		end
	end
end

#call methods

students = imput_students
print_header
print_students(students)
print_footer(students)
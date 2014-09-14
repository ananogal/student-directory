def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print_footer
	if(@students.length == 1)
		puts "Overall, we have #{@students.length} great student"
	else
		puts "Overall, we have #{@students.length} great students"
	end
end

def imput_students
	puts "Please enter the names of the students and their cohort"
	puts "To finish, just hit return twice"
	puts "Enter a name"

	#get the first name 
	#name = gets.chomp
	name = gets.sub("\n", "")

	studentHeight = 1.75

	#while the name is not empty, reapeat this code
	while !name.empty? do

		puts "Enter the student cohort"

		#studentCohort = gets.chomp
		studentCohort = gets.sub("\n", "")

		if !studentCohort.empty?
			#add students hash to the array
			@students << {:name => name, :cohort => studentCohort.capitalize.to_sym, :hobbies => :Hobbie, :country => :theCountry, :height => studentHeight}
		else
			@students << {:name => name, :cohort => "No cohort entered".to_sym, :hobbies => :Hobbie, :country => :theCountry, :height => studentHeight}
		end
		if(@students.length == 1)
			puts "Now we have #{@students.length} student"
		else
			puts "Now we have #{@students.length} students"
		end
		
		#get another name from user
		puts "Enter a name"
		#name = gets.chomp
		name = gets.sub("\n", "")
	end
end

def print_students
	new_students = @students.group_by{|student| student[:cohort]}

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

def showStudents
	if(@students.length > 0 )
		print_header
		print_students
		print_footer	
	else
		puts "No students to print"
	end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "9. Exit" # 9 because we'll be adding more items
end

def process(selection)
	case selection
  		when "1"
			imput_students
		when "2"
			showStudents
		when "3"
			save_students
  		when "9"
    	exit # this will cause the program to terminate
  	else
    	puts "I don't know what you meant, try again"
	end
end

def interactive_menu
	loop do
	  	# 1. print the menu and ask the user what to do
	  	print_menu
	  	# 3. do what the user has asked
	  	process(gets.chomp)
	end
end

#call methods
@students = []
interactive_menu



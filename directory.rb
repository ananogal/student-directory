def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def imput_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	#create an empty array
	students = []

	#get the first name 
	name = gets.chomp

	#while the name is not empty, reapeat this code
	while !name.empty? do
		#add students hash to the array
		students << {:name => name, :cohort => :september}
		puts "Now we have #{students.length} students"

		#get another name from user
		name = gets.chomp
	end
	students
end

#call methods

students = imput_students
print_header
print(students)
print_footer(students)
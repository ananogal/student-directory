def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print_body(students)
	students.each_with_index() do |student, index|
		puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def imput_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"

	#create an empty array
	students = []

	#get the first name 
	name = gets.chomp

	#while the name is not empty, reapeat this code
	while !name.empty? do
		#add students hash to the array
		students << {:name => name, :cohort => :september}
		print "Now we have #{students.length} students\n"

		#get another name from user
		name = gets.chomp
	end
	students
end

#call methods

students = imput_students
print_header
print_body(students)
print_footer(students)
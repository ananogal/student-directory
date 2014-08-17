#let's put all students into an array

students = [[:name => "Enrique Comba Riepenhausen", :cohort => :september],
			[:name => "Stephen Lloyd", :cohort => :september],
			[:name => "Alex Peattie", :cohort => :september],
			[:name => "vic329", :cohort => :september],
			[:name => "NicolePell", :cohort => :september],
			[:name => "Bernard", :cohort => :september],
			[:name => "elenagarrone", :cohort => :september],
			[:name => "Yvette Cook", :cohort => :september],
			[:name => "Stephen Giles", :cohort => :september],
			[:name => "Ana Isabel Nogal", :cohort => :september],
			[:name => "craigh44", :cohort => :september],
			[:name => "Tim Scully", :cohort => :september],
			[:name => "Ella Schofield", :cohort => :september],
			[:name => "Fadie H", :cohort => :september],
			[:name => "mala23", :cohort => :september] 
		] 

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

#call methods
print_header
print(students)
print_footer(students)
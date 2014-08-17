#let's put all students into an array

students = ["Enrique Comba Riepenhausen",
			"Stephen Lloyd",
			"Alex Peattie",
			"vic329",
			"NicolePell",
			"Bernard",
			"elenagarrone",
			"Yvette Cook",
			"Stephen Giles",
			"Ana Isabel Nogal",
			"craigh44",
			"Tim Scully",
			"Ella Schofield",
			"Fadie H",
			"mala23"] 

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "---------------------"
end 

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

#call methods
print_header
print(students)
print_footer(students)
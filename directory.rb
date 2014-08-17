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

#and then print then
puts "The students of my cohort at Makers Academy"
puts "---------------------"

students.each do |student|
	puts student
end

#finally, we print the total
puts "Overall, we have #{students.length} great students"

def say_hello(first_name)
	puts "Bonjour " + first_name
end
puts "Quel est ton prénom ?"
first_name = gets.chomp
say_hello(first_name)

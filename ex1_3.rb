def ask_first_name()
	first_name = gets
	return first_name
end
def say_hello(first_name)
	puts "Bonjour " + first_name
end
puts "Quel est ton prénom ?"
f_name = ask_first_name
say_hello(f_name)

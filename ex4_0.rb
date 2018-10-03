def random_num()
	num = rand(7)
	return num
end

def game(num, case_g)
	puts "\e[H\e[2J"
	if num == 1 && case_g != 10
		if case_g > 1
			case_g -= 1
			puts "Vous descendez d'une case !"
			print "Vous vous trouvez sur la case : "
		       	print case_g
			puts "/10"

		else 
			puts "Vous vous trouvez sur la 1ere case. Impossible de reculer encore plus !"
		end
	elsif num == 2 || num == 3 || num == 4
		puts "Vous ne changer pas de case."
		print "Vous vous trouvez sur la case : "
		print case_g
                puts "/10"
	elsif num == 5 || num == 6
		if case_g < 10
			case_g += 1
			puts "Vous avancer d'une case !"
			print "Vous vous trouvez sur la case : "
			print case_g
                        puts "/10"
		end
	elsif num == 0
		game(2, case_g)
	end
	return case_g
end

case_g = 1
continue = "y"
while case_g != 10 && continue == "y"
	number = random_num()
	print "dé : "
        puts number
	puts "Continuer ? (y/n)"
	continue = gets.chomp
	if continue != "n"
		case_g = game(number, case_g)
		continue = "y"
	else
		continue = "n"
	end
end
puts "GAME OVER !"

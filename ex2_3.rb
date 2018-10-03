def odd_pyramide()
	puts "Nombre d'étages de la pyramide ?"
	nbr = gets.chomp.to_i
	x = 1
	y = 0
	z = 0
	nbr2 = nbr - 1
	while (y < nbr && nbr > 0 && nbr <= 25)
		z = 0
		while (z < nbr2)
			print "\s"
			z += 1
		end
		print "\#" * x
		print "\n"
		nbr2 -= 1
		x += 2
		y += 1
	end
end
odd_pyramide()


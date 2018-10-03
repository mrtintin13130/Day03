def define_password()
        puts "Quel est ton mot de passe ?"
        user_password = gets.chomp
	return user_password
end

def connect(user_password)
        continue = 1
        choix = "y"
        while continue == 1 && continue == 1
                puts "Merci d'entrer votre mot de passe pour vous connecter :"
                pass = gets.chomp
                if pass == user_password && continue == 1
                        puts "Vous êtes maintenant connecté !"
                        continue = 0
                else
                        puts "Mot de passe incorrect !"
                        puts "Voulez-vous continuer ? (y/n)"
                        choix = gets.chomp
                        if choix == "n"
                                continue = 0
                        end
                end
        end
end
password = define_password()
connect(password)


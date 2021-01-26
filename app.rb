require 'bundler'
require 'pry'

require_relative 'lib/game'
require_relative 'lib/player'



class App < Player


# on déclare une variable dans la classe de player
puts player1  = Player.new("Hafida")
puts player2  = Player.new("Mamadou")



   # on présente le jeux et les joueurs avec des puts

puts "  Voici nos deux combattants : à ma droite #{player1.name}, de l'autre coté c'est #{player2.name} qui va se battre aujourd'hui "


 puts "===============================voici l'état de nos joueurs venue d'afrique du nord (maghreb) et du sud (subsaharien)!=================================="


 puts"                  AFRICA!!!!!   "
 puts"             ___________________                           "
 puts"             (||||||||||||||||||)"
 puts"             (||||||||||||||||||||)"
 puts"            (|||||||||||||||||||||||)"
 puts"            (|||||||||||||||||||||||||)"
 puts"             (||||||||||||||||||||||||)"
 puts"                (||||||||||||||||||||||)"
 puts"                  (|||||||||||||||||||||)"
 puts"                    (|||||||||||||||||||)"
 puts"                    (||||||||||||||||)"
 puts"                    (||||||||||||||)"
 puts"                    (||||||||||||)"
 puts"                     (|||||||||)"
 puts"                      (|||||||)"
 puts"                       (|||||)"
 puts"                        (|||)"
 puts"                         (|)"





puts "                      ==============================================================>"
puts '                        Voici'  "  #{player1.name}    "  'venue dAlgérie'    

puts "                                  #{player1.show_state}"



puts "                      ==============================================================>"
puts '                       Voici '  "   #{player2.name}   " ' Venue du Senegal'

puts "                                  #{player2.show_state}"



puts "                ======================== FIGHT !====================================>"

 
   # on crée une boucle  qui permettra de lancer le jeux et que les joueures s'affronte.         
    
puts " voici les stats de nos joueurs!"
      while player1.life_points > 0 && player2.life_points > 0 do

      # on crée une sorte de présentation de statuts des player  et d'explication qui a attacker et quelle points de dommages ont-il perdu.
      puts " voici les stats de nos joueurs!"
         puts player1.show_state
         puts player2.show_state
         puts ""
         puts " ----------- Let's go to the rumble ----------- :"
         puts ""
         puts player1.attacks(player2)

   # on crée une un if qui permettra d'arreter la boucle while quand un des players seera à 0.      
           break if player2.life_points <= 0 
         player2.attacks(player1)
       end
end












require 'bundler'
require 'pry'


class Player

    attr_accessor :name, :life_points
# défini au départ  la nom du joueur et les points de vie.
    def initialize (name)
        @name = name
        @life_points = 10
    end


    #Etat d'une joueur:
def show_state
    "#{@name} a #{@life_points} de vie"
end


# fait baisser les points de vies du joueur et mets  et si il a perdu!
  def gets_damage(life)
           @life_points = @life_points - life


     if @life_points <= 0
         puts "#{@name} à #{@life_points}: vous avez perdu!"
     #else 
        #puts "#{@name} vous avez perdu #{@life_points} points!"
     end
    end


    # Voici la def qui inflige des dommages
    def attacks(player)

        puts "le joueur #{@name} attaque!"  

       compteur = compute_damage

        puts "#{@name} " " inflige "" #{compteur} " " points de dommages"
        

       player.gets_damage(compteur)

    end


    # va prendre des nombre de 1 à 6 pour infliger des dommages
    def compute_damage
        return rand(1..6)
      end
    



end








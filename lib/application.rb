$:.unshift(File.expand_path'/home/dev/Bureau/Ruby/MORPION/lib', __FILE__) 

require 'game'
require 'board'


class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.

    puts "HEY Bienvenu dans notre jeu Morpion, Amuse-toi Bien :)!!"
    @game = Game.new # création de l'instance Game
    @game.turn # commence un tour
  end
end
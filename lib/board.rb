$:.unshift(File.expand_path'/home/dev/Bureau/Ruby/MORPION/lib', __FILE__) 
require 'boardcase'
require 'application'
require 'game'
require 'players'
require 'show'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :board_case_array

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @a1 = BoardCase.new("A1")
    @a2 = BoardCase.new("A2")
    @a3 = BoardCase.new("A3")
    @b1 = BoardCase.new("B1")
    @b2 = BoardCase.new("B2")
    @b3 = BoardCase.new("B3")
    @c1 = BoardCase.new("C1")
    @c2 = BoardCase.new("C2")
	@c3 = BoardCase.new("C3")

   @board_case_array = [ [@a1, @a2, @a3] , [@b1, @b2, @b3] , [@c1, @c2, @c3] ]
   @all_board_cases = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
  end

  def play_turn(player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)


     #1) demande au bon joueur ce qu'il souhaite faire
    puts "#{player.name}, à vous de jouer, choisissez votre case"
    puts "chacune désymbolée par sa position verticale (A, B ou C) suivie de sa position horizontale (1, 2 ou 3)."
    puts " Exemples : la case en haut à droite s'appelle >>A3<< et celle en bas à droite >>C3<<"
    print "> "
    player_case = gets.chomp.upcase
    while !@all_board_cases.include?(player_case) # on teste si la case est disponible
      puts "Choisis une autre case qui n'est pas encore cochée"
      print "> "
      player_case = gets.chomp.upcase
    end

    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)

    case player_case

    when "A1"
      @a1.value = player.symbol
      @all_board_cases.delete("A1")
    when "A2"
      @a2.value = player.symbol
      @all_board_cases.delete("A2")
    when "A3"
      @a3.value = player.symbol
      @all_board_cases.delete("A3")
    when "B1"
      @b1.value = player.symbol
      @all_board_cases.delete("B1")
    when "B2"
      @b2.value = player.symbol
      @all_board_cases.delete("B2")
    when "B3"
      @b3.value = player.symbol
      @all_board_cases.delete("B3")
    when "C1"
      @c1.value = player.symbol
      @all_board_cases.delete("C1")
    when "C2"
      @c2.value = player.symbol
      @all_board_cases.delete("C2")
    when "C3"
      @c3.value = player.symbol
      @all_board_cases.delete("C3")
    end

    def victory?(player, status)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

 	  if (@a1.value == @a2.value) && (@a2.value == @a3.value) && (@a1.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@b1.value == @b2.value) && (@b2.value == @b3.value) && (@b1.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@c1.value == @c2.value) && (@c2.value == @c3.value) && (@c1.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@a1.value == @b1.value) && (@b1.value == @c1.value) && (@a1.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@a2.value == @b2.value) && (@b2.value == @c2.value) && (@a2.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@a3.value == @b3.value) && (@b3.value == @c3.value) && (@a3.value != "_")
        puts "#{player.name} a gagné!\n"
        return trueplayer
      elsif (@a1.value == @b2.value) && (@b2.value == @c3.value) && (@a1.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      elsif (@a3.value == @b2.value) && (@b2.value == @c1.value) && (@a3.value != "_")
        puts "#{player.name} a gagné!\n"
        return true
      else
      end
    end
  end
end
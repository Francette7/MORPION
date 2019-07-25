
class Show

  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
     print "\t",  "*"*13, "\n"
   3.times do |x|
     print "\t| "
     3.times do |y|
       if board.board_case_array[x][y].value == nil
         print ". | "
       else
         print "#{board.board_case_array[x][y].value} | "
       end
     end
     puts
     print "\t",  "*"*13, "\n"
   end
  end
end

class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    puts "HEY Bienvenu dans notre jeu Morpion, Amuse-toi Bien :)!!"
    @game = Game.new # création de l'instance Game
    @game.turn # commence un tour
  end

end
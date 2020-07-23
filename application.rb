require 'bundler'
Bundler.require

require_relative 'lib/player'

def get_names
  puts "Joueur 1, quel est votre prénom ?" #obtention du nom des joueurs
  puts ">"
  name1 = gets.chomp
  player1 = Player.new(name1, "X") #attribution du nom et du symbole du joueur 1
  puts "Joueur 1, vous avez la valeur X"
  puts "Joueur 2, quel est votre prénom ?" #obtention du nom des joueurs
  puts ">"
  name2 = gets.chomp
  player2 = Player.new(name2, "O") #attribution du nom et du symbole du joueur 2
  puts "Joueur 1, vous avez la valeur O"
end

  get_names

  board = Board.new
  board.show_board #afficher le tableau

  board.play_turn

 



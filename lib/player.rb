
class Player 
  attr_reader :player_name 
  attr_reader :player_value 

  def initialize (name_to_update, value_to_update)
    @player_name = name_to_update #définition du nom des jouers
    @player_value = "X" || "O" #attribution du symbole attribué à chaque joueur
  end

end

class BoardCase
  attr_accessor :value, :case_number

  def initialize(case_number)
    @value = "X" || "O" || "#{@case_number}"
    @case_number = [1..9]
  end


end

class Board
  attr_accessor :board

  def initialize
    @board = ["1", "2", "3","4", "5", "6","7", "8", "9"]
  end


  def play_turn
    puts "Que voulez-vous jouer ?"
    puts ">"
    case_number = gets.chomp
    @board.each_index.map { |e| e == case_number && @board[e] != @player_value}
    show_board
    
  end

  def victory
   victory = @board[[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8],
   [0, 4, 8], [2, 4, 6]]
  end

  def show_board
    puts "#{@board[0..2].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[3..5].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[6..8].join(" | ")}"
  end

end




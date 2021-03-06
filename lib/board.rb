class Board
  attr_reader :position
  def initialize
    @position = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def get_color(color)
    color == 'X' ? 'O' : 'X'
  end

  def valid_move?(move)
    @position[move - 1] == 'X' || @position[move - 1] == 'O' || move > 9 || move < 1 ? false : true
  end

  def display_grid(move = nil, color = nil)
    @position[@position.index(move)] = color unless move.nil?
    "     #{position[0]} | #{position[1]} | #{position[2]}
    ---+---+---
     #{position[3]} | #{position[4]} | #{position[5]}
    ---+---+---
     #{position[6]} | #{position[7]} | #{position[8]}
     "
  end
end

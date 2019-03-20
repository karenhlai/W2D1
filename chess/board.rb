require "byebug"
require_relative 'piece.rb' 

class Board

  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8, NullPiece.instance) } 
    @grid[0][0] = Rook.new 
    @grid[0][1] = Knight.new
    @grid[0][2] = Bishop.new
    @grid[0][3] = King.new
    @grid[0][4] = Queen.new
    @grid[0][5] = Bishop.new
    @grid[0][6] = Knight.new
    @grid[0][7] = Rook.new
    @grid[1] = Array.new(8) { |col| col = Pawn.new }

    @grid[6] = Array.new(8) { |col| col = Pawn.new }
    @grid[7][0] = Rook.new 
    @grid[7][1] = Knight.new
    @grid[7][2] = Bishop.new
    @grid[7][3] = King.new
    @grid[7][4] = Queen.new
    @grid[7][5] = Bishop.new
    @grid[7][6] = Knight.new
    @grid[7][7] = Rook.new
  end


  def move_piece(start_pos, end_pos)
    old_row, old_col = start_pos[0], start_pos[1]
    raise "You're trying to move nothing!" if self[[old_row, old_col]] == NullPiece.instance
    new_row, new_col = end_pos[0], end_pos[1]
    current_val = self[[old_row, old_col]]
    raise 'Wrong move, bro!!' if self[[new_row, new_col]] != NullPiece.instance
    self[[new_row, new_col]] = current_val
    self[[old_row, old_col]] = NullPiece.instance
  end

  def []=(pos, value) # [[1, 2]] = value
    row, col = pos
    self[row][col] = value
  end

  def [](pos)
    row, col = pos
    self[row][col]
  end

  def valid_pos?(pos) #receiving :right
    # debugger
    (0..7) === pos[0] && (0..7) === pos[1]
  end
end
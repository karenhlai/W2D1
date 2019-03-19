require "byebug"
class Board

  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8, "X") } 
  end

  def move_piece(start_pos, end_pos)
    debugger
    self.grid.each_with_index do |row, row_idx| # an entire array
      row.each_with_index do |col, col_idx| 
        piece = col
        current_pos = self.grid[row_idx, col_idx]
        if current_pos == start_pos 
          
          current_pos = piece
          self.grid[end_pos] = piece 
          start_pos = nil
        end
      end
    end
  end

  def []=(pos, value) # [[1, 2]] = value
    row, col = pos
    self.grid[row][col] = value
  end

  def [](pos)
    row, col = pos
    self.grid[row][col]
  end
end
require 'colorized_string'
require 'colorize'
require_relative "cursor.rb"
require_relative "board.rb"

class Display
  attr_reader :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
    @selected = false
  end

  def render
    system("clear")
    @board.grid.each_with_index do |row, i|
      row.each_with_index do |square, j|
        if @cursor.cursor_pos == [i, j]
          print square.to_s.colorize(:color => :yellow)
        elsif (i.even? && j.even?) || (i.odd? && j.odd?)
          print square.to_s.colorize(:background => :light_blue)
        else
          print square.to_s.colorize(:background => :white)
        end
      end
      puts
    end
    p @cursor.cursor_pos
  end

  def cursor_move
    while true
      render
      @cursor.get_input
    end
  end

  def toggle_selected
    if KEYMAP[" "] || KEYMAP["\r"]
      @selected = true
    end
  end
end

display = Display.new(Board.new)
display.cursor_move

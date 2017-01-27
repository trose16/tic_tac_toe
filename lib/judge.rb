require_relative "grid.rb"

class Judge

  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end


  def check_for_win_x
    if grid.horizontal_row_1 || grid.horizontal_row_1 || grid.horizontal_row_3 || grid.vertical_row_1 || grid.vertical_row_2 || grid.vertical_row_3 || grid.diagonal_row_1 || grid.diagonal_row_2 == :X
      puts "X Wins!"
      game_reset
    end
  end

  def check_for_win_o
    if grid.horizontal_row_1 || grid.horizontal_row_1 || grid.horizontal_row_3 || grid.vertical_row_1 || grid.vertical_row_2 || grid.vertical_row_3 || grid.diagonal_row_1 || grid.diagonal_row_2 == :O
      puts "O Wins!"
      game_reset
    end
  end

  def game_reset
    puts "GAME OVER"
    grid.slots = Array.new(9)
  end


end

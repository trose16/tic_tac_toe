require_relative "grid.rb"

class Judge

  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end


  def win_x?
    if horizontal_row_1 || horizontal_row_1 || horizontal_row_3 || vertical_row_1 || vertical_row_2 || vertical_row_3 || diagonal_row_1 || diagonal_row_2 == :X
      puts "X Wins!"
    end
  end

end

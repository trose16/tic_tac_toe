require_relative "grid.rb"

class Game

  attr_reader :player_1, :player_2
  attr_accessor :grid

  def initialize(player_1, player_2, grid)
    @player_1 = player_1
    @player_2 = player_2
    @grid = grid
  end

  def play_x(position)
    grid.add_x(position)
  end

  def play_o(position)
    grid.add_o(position)
  end


end

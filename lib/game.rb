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
    turn_patrol(:X)
  end

  def play_o(position)
    grid.add_o(position)
    turn_patrol(:O)
  end

  def turn_patrol(choice)
    puts "Play O" if choice == :X
    puts "Play X" if choice == :O
  end


end

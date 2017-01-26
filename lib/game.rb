require_relative "grid.rb"

class Game

  attr_reader :player_1, :player_2
  attr_accessor :grid, :take_turns

  def initialize(player_1, player_2, grid)
    @player_1 = player_1
    @player_2 = player_2
    @grid = grid
    @take_turns = []
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
    take_turns << choice
    if take_turns.length == 2 && take_turns[0] != take_turns[1]
        take_turns = []
    end
  end

  def turn_error
    raise "It's not your turn!"
  end


end

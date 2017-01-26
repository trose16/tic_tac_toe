require_relative "grid.rb"
require_relative "judge.rb"

class Game

  attr_reader :player_1, :player_2, :judge
  attr_accessor :grid, :take_turns

  def initialize(p1, p2, grid, judge)
    @player_1 = p1
    @player_2 = p2
    @grid = grid
    @take_turns = []
  end


  def play_x(position)
    grid.add_x(position)
    turn_patrol(:X)
    check_for_win
  end

  def play_o(position)
    grid.add_o(position)
    turn_patrol(:O)
  end

  def turn_patrol(choice)
    take_turns << choice
    if take_turns.length == 2
      if take_turns[0] == take_turns[1]
        take_turns.pop
        turn_error
      end
    end
  end

  def turn_error
    raise "It's not your turn!"
  end

  def check_for_win
    judge.win?
  end


end

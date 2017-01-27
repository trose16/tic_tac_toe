#need logic for no winner but game over, need a better game reset, also looks like check for win needs adjusting to separate out x and o


require_relative "grid.rb"
require_relative "judge.rb"

class Game

  attr_reader :player_1, :player_2, :judge
  attr_accessor :take_turns

  def initialize(p1, p2, judge)
    @player_1 = p1
    @player_2 = p2
    @judge = judge
    @take_turns = []
  end


  def play_x(position)
    judge.grid.add_x(position)
    turn_patrol(:X)
    check_for_win
  end

  def play_o(position)
    judge.grid.add_o(position)
    turn_patrol(:O)
    check_for_win
  end

  # def turn_patrol(choice)
  #   take_turns << choice
  #   if take_turns.length == 2
  #       turn_reset
  #   end
  # end

  def turn_patrol(choice)
    take_turns << choice
    if take_turns.length == 2 && take_turns != nil
      if take_turns[0] != take_turns[1]
          turn_reset
      elsif take_turns[0] == take_turns[1]
          take_turns.pop
          turn_error
      end
    end
  end

  def turn_error
    raise "It's not your turn!"
  end

  def turn_reset
    @take_turns = []
  end

  def check_for_win
    judge.check_for_win_x && judge.check_for_win_o
  end




end

require_relative "grid.rb"

class Judge

  attr_reader :grid

  def initialize
    win = false
  end


  def win?
    puts "WINNER" if grid.horizontal_row_1 == :X
    win = true
  end

end

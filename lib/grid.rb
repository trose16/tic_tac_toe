class Grid

  attr_accessor :slots

  def initialize
    @slots = Array.new(9)
  end


  def add_x(grid_slot)
    choice = "x".upcase.to_sym
    grid_patrol(grid_slot)
    slots.insert(grid_slot, choice)
    check_for_win
  end

  def add_o(grid_slot)
    choice = "o".upcase.to_sym
    grid_patrol(grid_slot)
    slots.insert(grid_slot, choice)
  end

  def grid_patrol(grid_slot)
    if slots[grid_slot] != nil
      raise "this slot is taken!"
    end
  end

  def check_for_win
    if slots[0] && slots[1] && slots[2] == :X
      puts "WINNER"
    end
  end



# transfer things to symbols
end

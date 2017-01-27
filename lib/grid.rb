require_relative "judge.rb"

class Grid

  attr_accessor :slots
  attr_reader :judge

  def initialize
    @slots = Array.new(9)
  end


  def add_x(grid_slot)
    choice = "x".upcase.to_sym
    grid_patrol(grid_slot)
    slots.insert(grid_slot, choice)
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

  def horizontal_row_1
    slots[0] && slots[1] && slots[2]
  end

  def horizontal_row_2
    slots[3] && slots[4] && slots[5]
  end

  def horizontal_row_3
    slots[6] && slots[7] && slots[8]
  end

  def vertical_row_1
    slots[0] && slots[3] && slots[6]
  end

  def vertical_row_2
    slots[1] && slots[4] && slots[7]
  end

  def vertical_row_3
    slots[2] && slots[5] && slots[8]
  end

  def diagonal_row_1
    slots[6] && slots[4] && slots[2]
  end

  def diagonal_row_2
    slots[0] && slots[4] && slots[8]
  end

end

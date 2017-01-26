class Grid

  attr_accessor :slots

  def initialize
    @slots = Array.new(9)
  end


  def add_x(grid_slot)
    choice = "x".upcase.to_sym
    slots.insert(grid_slot, choice)
  end

  def add_o(grid_slot)
    choice = "o".upcase.to_sym
    slots.insert(grid_slot, choice)
  end



# transfer things to symbols
end

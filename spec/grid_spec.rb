require 'grid'

describe Grid do
  subject (:grid) { described_class.new }
  let (:slots) { double Array.new(9) }

  it 'has 9 slots in which a player can select' do
    expect(grid.slots.length).to eq 9
  end

  it "doesn't allow a grid slot be played more than once" do
    
  end

end

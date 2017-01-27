require 'grid'

describe Grid do
  subject (:grid) { described_class.new }
  let (:slots) { double Array.new(9) }

  context 'grid slot usage' do
    it 'has 9 slots in which a player can select' do
      expect(grid.slots.length).to eq 9
    end

    it "doesn't allow a grid slot be played more than once" do
      grid.add_x(0)
      expect { grid.add_x(0) }.to raise error "this slot is taken!"
    end
  end


end

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

    context "horizontal rows" do
      it 'defines grid slots 0,1,2 as a row' do
        expect(grid.horizontal_row_1).to eq slots[0..2]
      end

      it 'defines grid slots 3,4,5 as a row' do
      end

      it 'defines grid slots 6,7,8 as a row' do
      end
    end

    context "vertical rows" do
      it 'defines grid slots 0,3,6 as a row' do
      end

      it 'defines grid slots 1,4,7 as a row' do
      end

      it 'defines grid slots 2,5,8 as a row' do
      end

    end

    context "diagonal rows" do
      it 'defines grid slots 6,4,2 as a row' do
      end

      it 'defines grid slots 0,4,8 as a row' do
      end

    end

end

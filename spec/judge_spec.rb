require 'judge'

describe Judge do

  context "horizontal winning rows" do
    it 'defines grid slots 0,1,2 as a row' do
      expect(grid.horizontal_row_1).to eq slots[0..2]
    end

    it 'defines grid slots 3,4,5 as a winning row' do
    end

    it 'defines grid slots 6,7,8 as a row' do
    end
  end

  context "vertical winning rows" do
    it 'defines grid slots 0,3,6 as a row' do
    end

    it 'defines grid slots 1,4,7 as a row' do
    end

    it 'defines grid slots 2,5,8 as a row' do
    end

  end

  context "diagonal winning rows" do
    it 'defines grid slots 6,4,2 as a row' do
    end

    it 'defines grid slots 0,4,8 as a row' do
    end

  end

end

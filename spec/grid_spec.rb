require 'grid'

describe Grid do
  subject (:grid) { described_class.new }

  it 'has 9 grid/slots in which a player can select' do
    expect(grid.length).to eq 9
  end

end

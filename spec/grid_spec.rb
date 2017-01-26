require 'grid'

describe Grid do
  subject (:grid) { described_class.new }
  let (:slots) { double [nil, nil, nil, nil, nil, nil, nil, nil, nil] }

  it 'has 9 slots in which a player can select' do
    expect(grid.slots.length).to eq 9
  end


end

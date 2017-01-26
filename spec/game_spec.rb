require 'game'

describe Game do
  subject (:game) { described_class.new(player_1, player_2, grid) }
  let(:player_1) { double :player_2 }
  let(:player_2) { double :player_2 }
  let(:grid) { double Array.new(9) }

  it "is initialized with two players" do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  it "is initialized with a grid to play" do
    expect(game.grid).to eq grid
  end

  it 'allows players to choose a grid slot to play' do
    game.play_x(0)
    expect(game.grid.slots[0]).to eq :X
  end

  it "alternates between the two players" do

  end


end

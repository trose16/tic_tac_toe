require 'game'

describe Game do
  subject (:game) { described_class.new(player_1, player_2, grid) }
  let(:player_1) { double :player_2 }
  let(:player_2) { double :player_2 }
  let(:grid) { double :grid }

  it "is initialized with two players" do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  it "is initialized with a grid to play" do
    expect(game.grid).to eq grid
  end


end

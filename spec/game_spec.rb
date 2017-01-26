require 'game'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_2 }
  let(:player_2) { double :player_2 }

  it "is initialized with two players" do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  it "assigns x's and o's to the players" do
    
  end

  it "alternates turns between the two players" do
  end

  it "knows when a game is over" do
  end


end

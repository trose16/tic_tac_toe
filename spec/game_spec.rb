require 'game'

describe Game do
  let(:player_1) { double :player_2 }
  let(:player_2) { double :player_2 }


  it "is initialized with two players" do
    grid = Grid.new
    judge = Judge.new(grid)
    game = Game.new(player_1, player_2, judge)
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  it "is initialized with a grid to play" do
    grid = Grid.new
    judge = Judge.new(grid)
    game = Game.new(player_1, player_2, judge)
    expect(game.judge.grid).to eq grid
  end

  it 'allows players to choose a grid slot to play' do
    grid = Grid.new
    judge = Judge.new(grid)
    game = Game.new(player_1, player_2, judge)
    game.play_x(0)
    expect(game.grid[0]).to eq :X
  end

  it "doesn't allow x or o to be played twice in a row" do
    grid = Grid.new
    judge = Judge.new(grid)
    game = Game.new(player_1, player_2, judge)
    game.play_x(0)
    game.play_x(1)
    expect { game.turn_error }.to raise error "It's not your turn!"
    expect
  end



  it "knows when player X has won" do
    game.check_for_win_x
  end


end

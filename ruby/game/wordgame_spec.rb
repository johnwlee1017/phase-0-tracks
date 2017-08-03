require_relative 'wordgame'

describe WordGame do
  let(:wordgame) { WordGame.new }

  it "calculates number of guesses" do
    expect(wordgame.guesses_allowed("word")).to eq 4
  end


end
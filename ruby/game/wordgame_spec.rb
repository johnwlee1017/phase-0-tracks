require_relative 'wordgame'

describe WordGame do
  let(:wordgame) { WordGame.new }

  it "calculates number of guesses" do
    expect(wordgame.guesses_allowed("word")).to eq 4
  end

  it "displays current state of word"
    expect(wordgame.display_current_state("cord")).to eq "-ord"
  end

end
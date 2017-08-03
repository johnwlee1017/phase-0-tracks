require_relative 'wordgame'

describe WordGame do
  let(:wordgame) { WordGame.new }
  let(:correct_word) { ["t","e","s","t"] }
  #used attributes, to use variables in the instance methods

  it "converts correct word to dashes (as array)" do
    expect(wordgame.correct_word_to_dashes).to eq #["_", "_", "_", "_"]
  end

  it "displays correct letter from user input" do
    expect(wordgame.display_correct_letter).to eq #
  end

  it "displays congrats message if all letters matched" do
    expect(wordgame.complete_match).to eq #
  end
end
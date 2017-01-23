require_relative 'wordgame'

describe WordGame do
	let(:game) { WordGame.new(["hippo"]) }
end

it "sets the new word upon initialization" do
	expect(game.initialize).to eq ""
	end

it "iterates through word and pushes matches to array" do
	 if @correct_letter == letter
	 	expect(game.@correct_letter).to eq [0]
	 end

it "returns a message based on whether letter is in word or not." do
	 if @correct_letters.join == @guessed_letters.join
	 	expect(game.winner).to eq "that's great!"
	 end
end 
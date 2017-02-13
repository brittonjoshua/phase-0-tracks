#rspec file  
require_relative 'wordgame'

describe WordGame do
	let(:new_game) { WordGame.new("hippo") }
end

it "sets the new word upon initialization" do
	expect(new_game.initialize).to eq "hippo"
	end

it "expects the number of guesses to equal number of letters" do
	 expect(new_game.total_guesses). to eq (5)
	 end

it "returns a message based on whether letter is in word or not." do
	 expect(new_game.show_progress('h')). to eq display_string[0]
	 end
end 
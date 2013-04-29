
class Bowling
  def hit(pins)
  end

  def score
    0
  end
end

describe Bowling do 
	let(:game) {Bowling.new}

	it "should have a score of 0" do
		game.score.should eq(0)
	end
end
require_relative 'games'

describe Game do
  let(:game) { Game.new("apple") }

  describe 'attributes' do
    it "allows reading and writing for :solution" do
      game.solution = 'foo'
        expect(game.solution).to eq('foo')
      end

      it "allows reading for :guess" do
        expect(game.guess).to eq(3)
      end

      it "allows reading for :slot" do
        expect(game.slot).to eq(['_','_','_','_','_'])
      end

  end
    

  it "allows the user to guess a right alphabet character" do
    expect(game.guess_word_by_char('a')).to eq "a _ _ _ _"
  end

  it "allows the user to guess an solution" do
    expect(game.guess_word_by_word("apple")).to eq ["a", "p", "p", "l", "e"]
  end

  it "allows the user to overlap character check" do
    game.guess_word_by_char('p')
    game.guess_word_by_char('k')
    expect(game.check_overlap('p')).to eq true
    expect(game.check_overlap('k')).to eq true
    expect(game.check_overlap('c')).to eq false
  end



end
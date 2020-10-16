require_relative '../game'

describe Game do

let(:player1) { double :player1}
let(:player2) { double :player2}
  describe '#attack' do
    it 'passes message to player class' do
      expect(player1).to receive(:take_damage)
      subject.attack(player2, player1)
    end
  end
end

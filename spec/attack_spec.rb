require_relative '../attack'

# let(:@hp_p1) { double :player_hp }



describe '#attack' do

  it 'reduces player HP by 10' do
    expect(attack(100)).to eq 90
  end
end
require_relative '../player'

describe Player do

  let(:subject) { described_class.new("Charlie") }
  it 'will return their name' do
    expect(subject.name).to eq "Charlie"
  end

  it 'will return their hp' do
    expect(subject.hp).to eq 100
  end

  it 'can take damage' do
    subject.take_damage
    expect(subject.hp).to eq(90)
  end
end

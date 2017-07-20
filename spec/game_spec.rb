require 'game'

describe 'Game' do
  subject(:game) { Game.new }
  let(:bob) {double(:Player, name: 'Bob', points: 60)}

  describe '#attack' do
    it 'damages the player' do
      allow(bob).to receive(:reduce_points) { 50 }
      expect(game.attack(bob)).to eq 50
    end
  end
end

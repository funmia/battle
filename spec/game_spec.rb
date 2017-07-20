require 'game'

describe 'Game' do
  subject(:game) { Game.new(bob, bill) }
  let(:bob) {double(:player_1, name: 'Bob', points: 60)}
  let(:bill) {double(:player_2, name: 'Bill', points: 60)}

  describe '#initialize' do
    it "accepts two Player instances" do
      expect(game.player_1).to eq bob
    end
  end

  describe '#attack' do
    it 'damages the player' do
      allow(bill).to receive(:reduce_points) { 50 }
      expect(game.attack).to eq 50
    end
  end
end

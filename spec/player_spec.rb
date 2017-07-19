require 'player'

describe 'Player' do
   subject(:bob) { Player.new("Bob") }

  it "checks player's name" do
    expect(bob.name).to eq "Bob"
  end
end

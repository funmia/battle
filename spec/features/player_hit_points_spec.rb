feature 'the player hit points' do
  scenario 'when playing' do
    sign_in_and_play
    expect(page).to have_content("Bob: 60HP")
  end

end

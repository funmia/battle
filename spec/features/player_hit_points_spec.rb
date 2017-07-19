feature 'the player hit points' do
  scenario 'when playing' do
    visit('/')
    fill_in('player_1', with: 'Bob')
    fill_in('player_2', with: 'John')
    click_button "Submit"
    expect(page).to have_content("Bob: 60HP")
  end

end

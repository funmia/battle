feature 'Entering names' do
  scenario 'Submitting names' do
    visit('/')
    # within("#session")
    fill_in('player_1', with: 'Bob')
    fill_in('player_2', with: 'John')
    click_button "Submit"
    expect(page).to have_content ("Bob vs. John")
  end
end

feature 'Entering Players' do
  scenario 'Can fill in their name in a form and submit the form' do
    visit('/')
    # within("#session")
    fill_in('player_1', with: 'Bob')
    fill_in('player_2', with: 'John')
    click_button "Submit"
    expect(page).to have_content ('Bob, John')
  end
end

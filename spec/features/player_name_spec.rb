feature 'Entering names' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content ("Bob vs. John")
  end
end

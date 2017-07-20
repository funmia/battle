feature 'Attacking' do
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Bob attacked John!!!")
  end

  scenario "reduce the player's points" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("50HP")
  end
end

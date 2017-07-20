# feature 'Switch turns' do
#   # context 'seeing the current turn' do
#     scenario 'at the start of the game' do
#       sign_in_and_play
#       expect(page).to have_content "Bob's turn"
#     end
#
#     scenario 'after player 1 attacks' do
#       click_button "Attack"
#       expect(page).not_to have_content "Bob's turn"
#       expect(page).to have_content "Bill's turn"
#     end
#
#   # end
# end

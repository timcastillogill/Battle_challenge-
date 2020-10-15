def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Tim')
  fill_in(:player_2, with: 'Cam')
  click_button('Submit')
end
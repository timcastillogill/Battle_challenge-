# require 'app.rb'

feature 'Names form' do
  scenario 'can take in two player names from a form and post them to /names which redirects to /play and are visible there' do
    sign_in_and_play
    expect(page).to have_content('Tim' && 'Cam')
  end
end

feature 'view hitpoints' do
  scenario 'you can see the hitpoints that each player still has' do
    sign_in_and_play
    expect(page).to have_content( 100 && 100 )
  end
end

feature 'displays when player is hit' do 
  scenario 'Player 2 HP number reduced by 10' do
    sign_in_and_play
    click_on('attack_player_2')
    expect(page).to have_content( 100 && 90 )
  end
end


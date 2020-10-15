# require 'app.rb'

feature 'Names form' do
  scenario 'can take in two player names from a form and post them to /names' do
    visit('/')
    fill_in("Player 1", with: 'Tim')
    fill_in("Player 2", with: 'Cam')
    click_button('Submit')
    expect(page).to have_content('Tim' && 'Cam')
  end
end



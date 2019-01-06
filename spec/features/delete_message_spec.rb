require './lib/message'
require './spec/features/web_helper'

feature 'allows user to delete individual messages' do
  scenario 'expect to take user back to home page and selected message to have been deleted' do
    add_and_view_full_message
    click_button('Delete')
    expect(page.current_path).to eq("/")
    expect(page).not_to have_content('abcdefghijklmnopqrstuvwxyz')
  end
end
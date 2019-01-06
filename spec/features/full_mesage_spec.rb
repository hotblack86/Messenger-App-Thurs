require './lib/message'
require './spec/features/web_helper'

feature 'displays full length of message' do
  scenario 'expect to take user to a new page displaying full length of message' do
    visit '/'
    fill_in('content', :with => 'abcdefghijklmnopqrstuvwxyz')
    click_button('Send')
    expect(page).not_to have_content('vwxyz')
    show_full_message
    expect(page).to have_content('abcdefghijklmnopqrstuvwxyz')
  end
end

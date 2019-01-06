require './lib/message'
require './spec/features/web_helper'

feature 'allows user to edit individual messages' do
  scenario 'expect to take user to edit page' do
    add_and_view_full_message
    click_button('Edit')
    expect(find_field.value).to eq 'abcdefghijklmnopqrstuvwxyz'
  end

  scenario 'user edits message and clicks update button' do
    add_and_view_full_message
    click_button('Edit')
    fill_in('message', :with => 'abcdefg edited')
    click_button('Update')
    expect(page.current_path).to eq("/")
    expect(page).to have_content('abcdefg edited')
  end


end
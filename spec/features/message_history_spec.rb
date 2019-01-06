require './lib/message'
require './spec/features/web_helper'

feature "Message history" do
  scenario "display full message history" do
    add_and_view_multiple_messages
    expect(page).to have_content('test1')
    expect(page).to have_content('test2')
    expect(page).to have_content('test3')
  end
end

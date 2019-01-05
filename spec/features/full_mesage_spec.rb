require './lib/message'

feature 'displays full length of message' do
  scenario 'expect to take user to a new page displaying full length of message' do
    visit '/'
    fill_in('content', :with => 'abcdefghijklmnopqrstuvwxyz')
    click_button('Send')
    expect(page).not_to have_content('vwxyz')
    click_link('abcdefghijklmnopqrst')
    expect(page).to have_content('abcdefghijklmnopqrstuvwxyz')
  end
end

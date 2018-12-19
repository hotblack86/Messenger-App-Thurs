feature 'new message' do
  scenario 'send new message and display the first 20 characters'do
    visit '/'
    fill_in('message', :with => 'abcdefghijklmnopqrstuvwxyz')
    click_button('Send')
    expect(page).not_to have_content('uvwxyz')
    expect(page).to have_content('abcdefghijklmnopqrst')
  end
end

require './lib/message'

feature "Message history" do
  scenario "display full message history" do
    # Timecop.freeze
    visit '/'
    fill_in('content', :with => 'test1')
    click_button('Send')
    fill_in('content', :with => 'test2')
    click_button('Send')
    expect(page).to have_content('test1')
    # expect(page).to have_content(Time.now)
    expect(page).to have_content('test2')
  end
end

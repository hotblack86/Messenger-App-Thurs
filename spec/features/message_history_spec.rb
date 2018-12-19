feature "Message history" do
  scenario "display full message history" do
    Timecop.freeze
    visit '/'
    fill_in('message', :with => 'test1')
    click_button('Send')
    fill_in('message', :with => 'test2')
    click_button('Send')
    expect(page).to have_content('test1')
    expect(page).to have_content(Time.now)
    expect(page).to have_content('test2')
    expect('test2').to appear_before('test1')
  end
end

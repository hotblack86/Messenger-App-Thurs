feature "Message history" do
  scenario "display full message history" do
    Timecop.freeze
    visit '/'
    fill_in('message', :with => 'test1')
    click_button('Send')
    fill_in('message', :with => 'test2')
    click_button('Send')
    expect(page).to have_content('test2')
    expect(page).to have_content('test1')
    expect(page).to have_content(Time.now.strftime("%d-%m-%Y %H:%M"))
  end
end

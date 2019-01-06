def add_and_view_multiple_messages
    visit '/'
    fill_in('content', :with => 'test1')
    click_button('Send')
    fill_in('content', :with => 'test2')
    click_button('Send')
    fill_in('content', :with => 'test3')
    click_button('Send')
end

def add_and_view_full_message
    visit '/'
    fill_in('content', :with => 'abcdefghijklmnopqrstuvwxyz')
    click_button('Send')
    first(:link, 'abcdefghijklmnopqrst').click
end

def show_full_message
    first(:link, 'abcdefghijklmnopqrst').click
end
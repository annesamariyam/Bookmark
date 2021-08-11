feature 'new bookmark' do
  scenario 'add new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.google.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_content 'http://www.google.com'
  end 
end

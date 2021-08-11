feature 'bookmark test' do 
  scenario 'failing test' do 
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit('/bookmarks')
    
    expect(page).to have_link('Makers Academy' "http://www.makersacademy.com")
    expect(page).to have_link ('Google' "http://www.google.com")
    expect(page).to have_link('Destroy All Software' "http://www.destroyallsoftware.com")
  end
end



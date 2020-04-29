feature 'Home page greeting' do
  scenario 'It says "Hello there!"' do
    visit('/')
    expect(page).to have_content('Hello there!')
  end
end

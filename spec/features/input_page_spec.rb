feature 'Home page greeting' do
  scenario 'It says "Hello there!"' do
    visit('/')
    expect(page).to have_content('Hello there!')
  end

  scenario 'It has a form with a name field' do
    expect(page).to have_field('Name')
  end
end

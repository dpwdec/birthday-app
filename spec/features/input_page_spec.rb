feature 'Home page greeting' do
  scenario 'It says "Hello there!"' do
    visit('/')
    expect(page).to have_content('Hello there!')
  end

  scenario 'It has a form with a name field' do
    visit('/')
    expect(page).to have_field('name')
  end

  scenario 'The form name field is named' do
    visit('/')
    expect(page).to have_content("What's your name?")
  end

  scenario 'It has a submit button' do
    visit('/')
    expect(page).to have_button('Submit')
  end
end

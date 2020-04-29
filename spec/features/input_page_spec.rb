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

  scenario 'Clicking on the submit button takes you to the greet page' do
    visit('/')
    click_button('Submit')
    expect(page).to have_current_path('/greet')
  end

  scenario 'Greet page contains the name entered' do
    visit('/')
    fill_in('name', with: 'John')
    click_button('Submit')
    expect(page).to have_content('John')
  end

  scenario 'It has a label asking for your birthday' do
    visit('/')
    expect(page).to have_content("When's your birthday?")
  end

  scenario 'It has a a field for day' do
    visit('/')
    expect(page).to have_field('day')
  end
end

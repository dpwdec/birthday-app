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

  # scenario 'Clicking on the submit button takes you to the greet page' do
  #   visit('/')
  #   click_button('Submit')
  #   expect(page).to have_current_path('/greet')
  # end

  # scenario 'Greet page contains the name entered' do
  #   visit('/')
  #   fill_in('name', with: 'John')
  #   click_button('Submit')
  #   expect(page).to have_content('John')
  # end

  scenario 'It has a label asking for your birthday' do
    visit('/')
    expect(page).to have_content("When's your birthday?")
  end

  scenario 'It has a a field for day' do
    visit('/')
    expect(page).to have_field('day')
  end

  scenario 'It has a dropdown for month' do
    visit('/')
    expect(page).to have_field('month')
  end

  scenario 'Greet page says "Happy Birthday" when your birthday is today' do
    visit('/')
    fill_in('name', with: 'John')
    fill_in('day', with: Date.today.day.to_s)
    find_by_id('month').find(:xpath, "option[#{(Date.today.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Happy Birthday John!')
  end

  scenario 'Greet page says how many days until your next birthday, this year' do
    visit('/')
    new_date = Date.today
    10.times { new_date = new_date.next_day }
    fill_in('name', with: 'John')
    fill_in('day', with: new_date.day)
    find_by_id('month').find(:xpath, "option[#{(new_date.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Your birthday will be in 10 days, John.')
  end

  scenario 'Greet page says how many days until your next birthday, next year' do
    visit('/')
    new_date = Date.today
    10.times { new_date = new_date.prev_day }
    fill_in('name', with: 'John')
    fill_in('day', with: new_date.day)
    find_by_id('month').find(:xpath, "option[#{(new_date.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Your birthday will be in 355 days, John.')
  end
end

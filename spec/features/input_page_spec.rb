feature 'Home page greeting' do

  scenario 'It has interface for the index' do
    visit('/')
    expect(page).to have_content('Hello there!')
    expect(page).to have_field('name')
    expect(page).to have_content("What's your name?")
    expect(page).to have_button('Submit')
    expect(page).to have_content("When's your birthday?")
    expect(page).to have_field('day')
    expect(page).to have_field('month')
  end

  scenario 'Clicking on the submit button takes you to the greet page' do
    fill_name
    fill_in('day', with: Date.today.day.to_s)
    find_by_id('month').find(:xpath, "option[#{(Date.today.month)}]").select_option
    click_button('Submit')
    expect(page).to have_current_path('/greet')
  end

  scenario 'Greet page says "Happy Birthday" when your birthday is today' do
    fill_name
    fill_in('day', with: Date.today.day.to_s)
    find_by_id('month').find(:xpath, "option[#{(Date.today.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Happy Birthday John!')
  end

  scenario 'Greet page says how many days until your next birthday, this year' do
    fill_name
    new_date = Date.today
    10.times { new_date = new_date.next_day }
    fill_in('day', with: new_date.day)
    find_by_id('month').find(:xpath, "option[#{(new_date.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Your birthday will be in 10 days, John.')
  end

  scenario 'Greet page says how many days until your next birthday, next year' do
    fill_name
    new_date = Date.today
    10.times { new_date = new_date.prev_day }
    fill_in('day', with: new_date.day)
    find_by_id('month').find(:xpath, "option[#{(new_date.month)}]").select_option
    click_button('Submit')
    expect(page).to have_content('Your birthday will be in 355 days, John.')
  end
end

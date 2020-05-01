def fill_name
  visit('/')
  fill_in('name', with: 'John')
end

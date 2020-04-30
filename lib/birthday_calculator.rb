require 'date'

class BirthdayCalcaulator

  def self.days_until(day, month, today = Date.today)
    birthday = birthday_to_date(day, month)
    birthday - today
  end

  def self.birthday_to_date(day, month)
    number_month = Date::ABBR_MONTHNAMES.index(month[0..2])
    Date.new(Date.today.year, number_month, day.to_i)
  end
end

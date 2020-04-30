require 'date'

class BirthdayCalculator

  def days_until(day, month, today = Date.today)
    birthday = birthday_to_date(day, month)
    if (birthday - today) < 0
      birthday = birthday.next_year
      return birthday - today
    else
      return birthday - today
    end
  end

  def birthday_to_date(day, month)
    number_month = Date::ABBR_MONTHNAMES.index(month[0..2])
    Date.new(Date.today.year, number_month, day.to_i)
  end
end

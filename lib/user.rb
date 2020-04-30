class User
  attr_reader :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
  end
end

class Goal < ApplicationRecord
  has_many :notes

  def changed_today?
    year_month_day = '%Y-%m-%d'
    updated_at.strftime(year_month_day) == Date.today.strftime(year_month_day)
  end
end

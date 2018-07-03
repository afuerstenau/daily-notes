class Goal < ApplicationRecord
  has_many :notes
  def has_changed_today()
    year_month_day = "%Y-%m-%d"
    logger.error "has_changed_today? #{updated_at.strftime(year_month_day) == Date.today.strftime(year_month_day)}"
    logger.error "updated: #{updated_at.strftime(year_month_day)}"
    logger.error "today: #{Date.today.strftime(year_month_day)}"
    return updated_at.strftime(year_month_day) == Date.today.strftime(year_month_day)
  end
end

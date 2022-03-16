module ApplicationHelper
  def pretty_date(date)
    month = sprintf("%02d", date.month)
    day   = sprintf("%02d", date.day)
    "(#{month}/#{day})"
  end
end

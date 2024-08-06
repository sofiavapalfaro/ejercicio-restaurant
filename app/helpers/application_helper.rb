module ApplicationHelper
  def formatted_time(time)
    return 'N/A' if time.nil?
    time.strftime("%I:%M %p") # Formats time as "09:00 AM"
  end
end

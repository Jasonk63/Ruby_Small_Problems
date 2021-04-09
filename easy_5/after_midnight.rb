def time_of_day(minutes_from_midnight)
  if minutes_from_midnight < 0
    hours = (minutes_from_midnight / 60).remainder(24) + 24
    minutes = minutes_from_midnight.remainder(60) + 60
    hours = 0 if hours == 24
    minutes = 0 if minutes == 60
  else
    hours = (minutes_from_midnight / 60).remainder(24)
    minutes = minutes_from_midnight.remainder(60)
  end
  time = format("%02d:%02d", hours.to_s, minutes.to_s)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

def initialize_lights(total_lights)
  lights = Hash.new

  1.upto(total_lights) do |n|
    lights[n] = 'off'
  end

  lights
end

def on_lights(lights)
  lights.select { |_position, state| state == 'on' }.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == 'off') ? 'on' : 'off'
    end
  end
end

def toggle_lights(total_lights)
  lights = initialize_lights(total_lights)

  1.upto(lights.size) do |iterator|
    toggle_every_nth_light(lights, iterator)
  end

  on_lights(lights)
end

p toggle_lights(1000)

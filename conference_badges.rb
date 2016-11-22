def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator (names)
  names.collect { |name| badge_maker(name) }
end

def assign_rooms (names)
  room_assignments = []
  names.each_with_index { |name, index| room_assignments.push ("Hello, #{name}! You'll be assigned to room #{index + 1}!") }
  room_assignments
end

def printer (names)
  batch_badge_creator(names).each { |badge| puts badge}
  assign_rooms(names).each { |room_assignment| puts room_assignment}
end

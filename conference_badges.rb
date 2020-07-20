def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(list)
  list.map { |name| badge_maker(name) }
end

def assign_rooms(speakers)
  assignments = []

  speakers.each.with_index do |speaker, num|
    assignments << "Hello, #{speaker}! You'll be assigned to room #{num+1}!"
  end

  assignments
end

def printer(list)
  batch_badge_creator(list).each { |badge| puts badge }

  assign_rooms(list).each { |room_assignment| puts room_assignment }
end
require_relative './seed'  # Creates instances to play with

# Steven Gerrard changed is number from 17 to 8 in the 2004/05 season
steven_gerrard = Player.all.find { |player| player.name == 'Steven Gerrard'}

puts "Steven Gerrard's Original Number: #{steven_gerrard.number}"  # Read original number (17)
puts "Changing number to 8..."
steven_gerrard.number = 8  # Write new number
puts "Steven Gerrard's New Number: #{steven_gerrard.number}"  # Read new number (8)

puts

manchester_united = Team.all.find { |team| team.name == 'Manchester United' }
liverpool_fc = Team.all.find { |team| team.name == 'Liverpool FC' }

# Use `has_many` macro to read original players on teams
puts "Original Machester United Players: #{manchester_united.players.map { |player| player.name }}"   
puts "Original Liverpool FC Players: #{liverpool_fc.players.map { |player| player.name }}"

puts

# Michael Owen originally played on Liverpool, but ended up on Manchester United late in his career
michael_owen = Player.all.find { |player| player.name == 'Michael Owen'}

puts "Michael Owen's Original Team: #{michael_owen.team.name}"  # Read original team name
puts "Changing team to Manchester United..."
michael_owen.team = manchester_united  # Change teams
puts "Michael Owen's New Team: #{michael_owen.team.name}"  # Read new team name

puts

# Use `has_many` macro to read original players on teams
puts "New Machester United Players: #{manchester_united.players.map { |player| player.name }}"   
puts "New Liverpool FC Players: #{liverpool_fc.players.map { |player| player.name }}"

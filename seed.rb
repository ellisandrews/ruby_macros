require_relative './models/player'
require_relative './models/team'

# Create a couple teams
manchester_united = Team.new('Manchester United', 'Old Trafford')
liverpool_fc = Team.new('Liverpool FC', 'Anfield')

# Create a few Manchester United players
Player.new('Wayne Rooney', 10, manchester_united)
Player.new('Ryan Giggs', 11, manchester_united)
Player.new('David Beckham', 7, manchester_united)

# Create a few Liverpool players
Player.new('Steven Gerrard', 8, liverpool_fc)
Player.new('Michael Owen', 10, liverpool_fc)
Player.new('Fernando Torres', 9, liverpool_fc)

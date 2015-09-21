# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.destroy_all
Tournament.destroy_all
Registration.destroy_all

players = Player.create([
	{name: "user1"},
	{name: "user2"},
	{name: "user3"},
	])

tournaments = Tournament.create([
	{name: "Tournament 1"},
	{name: "Tournament 2"},
	{name: "Tournament 3"}
])

registrations = Registration.create([
	{player_id: players[0].id, tournament_id: tournaments[0].id},
	{player_id: players[1].id, tournament_id: tournaments[1].id},
	{player_id: players[2].id, tournament_id: tournaments[2].id}
])


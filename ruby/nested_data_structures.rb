##Release 2: Designing a nested data structure. 
#Using the YMCA as a nested structure example, build it.
#Then print examples of deeply nested data.
YMCA={
	basketball_court: {
		nickname: 'The Court',
		capacity: {
			players: 45,
			spectators: 88
		},
		equipment: [
			"basketballs",
			"vollyballs"
		]
	},
	weight_room: {
		nickname: 'Sweat Lodge',
		capacity: {
			weightlifters: 24,
			spectators: 49
		},
		equipment: [
			"free weights",
			"elliptical machines",
			"kettle bells"
			]
	},
	pool: {
		nickname: 'Germ Gathering',
		capacity: {
			swimmers: 50,
			spectators: 55,
		},
		equipment: [
			"noodles",
			"towels",
			"swim trunks"]
	}
}

puts YMCA[:weight_room][:equipment][1]
puts YMCA[:pool][:nickname]
puts YMCA[:pool][:equipment][1.next]
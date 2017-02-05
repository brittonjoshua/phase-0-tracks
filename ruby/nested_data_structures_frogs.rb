##Release 2: Designing a nested data structure. 
#Using the YMCA as a nested structure example, build it.
#Then print examples of deeply nested data.
grocery_store = {
	pharmacy: {
		location: 'back aisle',
		employees: {
			supervisors: 3,
			hourly: 7
		},
		ailses: [
			'cold meds',
			'baby formula',
			'toothpaste'

		]
	},

	deli: {
		location: 'east side',
		employees: {
			supervisors: 4,
			hourly: 9
		},
		counters: [
			'salads',
			'meats',
			'cheese'
			]
	},

	produce: {
		location: 'west side',
		employees: {
			supervisors: 5,
			hourly: 12,
		},
		bins: [
			'tomatos',
			'potatos',
			'peppers']
	}
}

puts grocery_store [:pharmacy][:ailses][1]
puts grocery_store [:deli][:location]
puts grocery_store [:produce][:bins].push ('avocados')
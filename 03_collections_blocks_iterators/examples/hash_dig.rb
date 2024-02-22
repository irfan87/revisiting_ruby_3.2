# dig method can be used to access complicated
# maybe can used for web scraping

heroes_data = {
	mcu: [
		{
			name: "Iron Man",
			year: 2010,
			actors: [
				"Robert Downey Jr.",
				"Gwyneth Paltrow",
			]
		}
	],
	starwars: [
		{
			name: "A New Hope",
			year: 1977,
			actors: [
				"Mark Hamill",
				"Carrie Fisher",
			]
		}
	]
}

# without dig()
iron_man_without_dig = heroes_data[:mcu][0][:actors][0]
print "Man in the Iron Man suit is #{iron_man_without_dig} - Without dig()"

# with dig
print "\n"
iron_man_with_dig =  heroes_data.dig(:mcu, 0, :actors, 0)
print "Man in the Iron Man suit is #{iron_man_with_dig} - With dig()"
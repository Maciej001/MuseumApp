puts "Adding a Whole bunch of Artists"
Museum.create [
  {
    name: "National Gallery",
  },
  {
  	name: "National Museum in Warsaw"
  }
  ]

Artist.create [
	{
		name: "Rembrandt",
		born: 1606,
		died: 1669
	},
	{
		name: "Diego Velázquez",
		born: 1599,
		died: 1660
	},
	{
		name: "Titian",
		born: 1485,
		died: 1576
	},
	{
		name: "Jan Matejko",
		born: 1838,
		died: 1893
	},
	{
		name: "Józef Mehoffer",
		born: 1869,
		died: 1946
	},
	{
		name: "Aleksander Gierymski",
		born: 1850,
		died: 1901
	}
]


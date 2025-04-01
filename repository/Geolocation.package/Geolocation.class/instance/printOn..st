printing
printOn: s

	s nextPutAll: 'lat: '.
	self latitudeDegrees printOn: s.
	s nextPutAll: ' lon: '.
	self longitudeDegrees printOn: s
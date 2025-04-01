printing
printOn: s

	s
		nextPutAll: 'sw lat: ';
		nextPutAll: (latitudeMin printShowingDecimalPlaces: 3);
		nextPutAll: ' long: ';
		nextPutAll: (longitudeMin printShowingDecimalPlaces: 3);
		nextPutAll: ' ne lat: ';
		nextPutAll: (latitudeMax printShowingDecimalPlaces: 3);
		nextPutAll: ' long: ';
		nextPutAll: (longitudeMax printShowingDecimalPlaces: 3)
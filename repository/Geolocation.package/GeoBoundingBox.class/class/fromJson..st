as yet unclassified
fromJson: aCollection
	^ self new
		longitudeMin: (aCollection at: 'west');
		longitudeMax: (aCollection at: 'east');
		latitudeMax: (aCollection at: 'north');
		latitudeMin:(aCollection at: 'south');
		yourself
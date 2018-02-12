as yet unclassified
testCreation
	|geo|
	geo:=Geolocation degreeLatitude: 45 longitude:45.
	self assert: geo longitudeRadians equals: Float pi /4.
	self assert:  geo latitudeRadians  equals: Float pi / 4.
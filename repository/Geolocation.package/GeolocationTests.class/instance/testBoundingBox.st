as yet unclassified
testBoundingBox
	| geo bbox |
	geo := Geolocation degreeLatitude: 45 longitude: 45.
	bbox := GeoBoundingBox for: geo within: 1000.
	self assert: (bbox contains: geo).
	geo := Geolocation degreeLatitude: 45.0001 longitude: 45.
	self assert: (bbox contains: geo).
	geo := Geolocation degreeLatitude: 45.0001 longitude: 45.0001.
	self assert: (bbox contains: geo).
	geo := Geolocation degreeLatitude: 145.0001 longitude: 45.
	self assert: (bbox contains: geo) not.
	geo := Geolocation degreeLatitude: 45.0001 longitude: 145.
	self assert: (bbox contains: geo) not.
	geo := Geolocation degreeLatitude: -45 longitude: -45.
	self assert: (bbox contains: geo) not
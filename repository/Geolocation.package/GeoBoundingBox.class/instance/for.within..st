accessing
for: aGeolocation within: aDistanceInMeters
	"http://janmatuschek.de/LatitudeLongitudeBoundingCoordinates"

	| angularRadius longitudeDelta |
	distance := aDistanceInMeters.
	centerLatitude := aGeolocation latitudeRadians.
	centerLongitude := aGeolocation longitudeRadians.
	angularRadius := self angularRadius.
	latitudeMax := centerLatitude + angularRadius.
	latitudeMin := centerLatitude - angularRadius.
	(latitudeMax > self maxLatitude
		or: [ latitudeMin < self minLatitude ])
		ifTrue: [ ^ self setValuesForPolarBoundingBox ].
	longitudeDelta := (angularRadius sin / centerLatitude cos) arcSin.
	longitudeMin := centerLongitude - longitudeDelta.
	longitudeMin < self minLongitude
		ifTrue: [ longitudeMin := longitudeMin + (Float pi * 2) ].
	longitudeMax := centerLongitude + longitudeDelta.
	longitudeMax > self maxLongitude
		ifTrue: [ longitudeMax := longitudeMax - (Float pi * 2) ]
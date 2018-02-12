accessing
for: aGeolocation within: aDistanceInMeters
	"http://janmatuschek.de/LatitudeLongitudeBoundingCoordinates"

	| latitudeDist longitudeDelta |
	centerLatitude := aGeolocation latitudeRadians.
	centerLongitude := aGeolocation longitudeRadians.
	latitudeDist := aDistanceInMeters / self latitudeRadius.
	latitudeMax := centerLatitude + latitudeDist.
	latitudeMin := centerLatitude - latitudeDist.
	(latitudeMax > self maxLatitude or: [ latitudeMin < self minLatitude ])
		ifTrue: [ ^ self setValuesForPolarBoundingBox ].
	longitudeDelta := (latitudeDist sin / centerLatitude cos) arcSin.
	longitudeMin := centerLongitude - longitudeDelta.
	longitudeMin < self minLongitude
		ifTrue: [ longitudeMin := longitudeMin + (Float pi * 2) ].
	longitudeMax := centerLongitude + longitudeDelta.
	longitudeMax > self maxLongitude
		ifTrue: [ longitudeMax := longitudeMax - (Float pi * 2) ]
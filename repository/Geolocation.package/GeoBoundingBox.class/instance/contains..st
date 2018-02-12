accessing
contains: aGeolocation
	^ (aGeolocation latitudeRadians between: latitudeMin and: latitudeMax)
		and: [ aGeolocation longitudeRadians between: longitudeMin and: longitudeMax ]
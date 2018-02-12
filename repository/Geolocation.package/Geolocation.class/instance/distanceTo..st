accessing
distanceTo: aGeolocation
	"Answer the distance in meters between two coordinates in float number representation."

	"haversine formula from http://www.movable-type.co.uk/scripts/latlong.html"

	"originally by Esteban Maringolo here 	http://pastebin.com/ThKDXCKK"

	"earthDiameter := 12742000 meters"

	| lat2Rad lon2Rad dLat dLon dLatSinSqrd dLonSinSqrd cosLatLat a |
	lat2Rad := aGeolocation latitudeRadians.
	lon2Rad := aGeolocation longitudeRadians.
	dLat := lat2Rad - latitudeRadians.
	dLon := lon2Rad - longitudeRadians.
	dLatSinSqrd := (dLat / 2) sin squared.
	dLonSinSqrd := (dLon / 2) sin squared.
	cosLatLat := lat2Rad cos * latitudeRadians cos.
	a := dLatSinSqrd + (cosLatLat * dLonSinSqrd).
	^ 12742000 * a sqrt arcSin
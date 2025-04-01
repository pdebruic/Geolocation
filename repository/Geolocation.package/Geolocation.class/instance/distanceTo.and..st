distance
distanceTo: lat2Rad and: lon2Rad 
	"Answer the distance in meters between two coordinates in float number representation."

	"haversine formula from http://www.movable-type.co.uk/scripts/latlong.html"

	"originally by Esteban Maringolo here 	http://pastebin.com/ThKDXCKK"

	"earthDiameter := 12742000 meters"

	|  dLat dLon dLatSinSqrd dLonSinSqrd cosLatLat a |
	
	dLat := lat2Rad - latitudeRadians.
	dLon := lon2Rad - longitudeRadians.
	dLatSinSqrd := (dLat / 2) sin squared.
	dLonSinSqrd := (dLon / 2) sin squared.
	cosLatLat := lat2Rad cos * latitudeRadians cos.
	a := dLatSinSqrd + (cosLatLat * dLonSinSqrd).
	^ 12742000 * a sqrt arcSin
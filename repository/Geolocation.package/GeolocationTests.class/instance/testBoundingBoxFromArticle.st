tests
testBoundingBoxFromArticle
	| geo bbox |
"http://janmatuschek.de/LatitudeLongitudeBoundingCoordinates"
	geo := Geolocation radianLatitude: 1.3963  longitude:  -0.6981.
	bbox := GeoBoundingBox for: geo within: 1000*1000.
	self assertFloat: bbox angularRadius equals: '0.157'.
	self assertFloat: bbox latitudeMax equals: '1.554'.
	self assertFloat: bbox latitudeMin equals: '1.239'.
	self assertFloat: bbox longitudeMin equals: '-1.823'.
	self assertFloat: bbox longitudeMax equals: '0.427'.

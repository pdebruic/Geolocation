accessing
centerLongitude

	^ centerLongitude ifNil: [ longitudeMin + longitudeMax / 2 ]
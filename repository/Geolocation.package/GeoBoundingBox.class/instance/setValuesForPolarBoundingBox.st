accessing
setValuesForPolarBoundingBox
	latitudeMax := latitudeMax min: self maxLatitude.
	latitudeMin := latitudeMin max: self minLatitude.
	longitudeMax := self maxLongitude.
	latitudeMax := self minLongitude
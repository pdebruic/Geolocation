accessing
centerLatitude

	^ centerLatitude  ifNil: [ latitudeMin +latitudeMax  / 2 ]
updating
expandBoundingBoxWith: long and: lat

	long < longitudeMin ifTrue: [ longitudeMin := long ].
	long > longitudeMax ifTrue: [ longitudeMax := long ].
	lat < latitudeMin ifTrue: [ latitudeMin := lat ].
	lat > latitudeMax ifTrue: [ latitudeMax := lat ]
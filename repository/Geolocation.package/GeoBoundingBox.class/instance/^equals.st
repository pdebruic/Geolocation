comparing
= aBoundingBox
	^self class == aBoundingBox  class and:[latitudeMax = aBoundingBox latitudeMax and:[latitudeMin = aBoundingBox latitudeMin and:[longitudeMax = aBoundingBox longitudeMax and:[longitudeMin = aBoundingBox longitudeMin]]]]
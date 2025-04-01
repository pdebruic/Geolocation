testing
isValid

	^ (longitudeDegrees notNil and: [ latitudeDegrees notNil ]) or: [ 
		  longitudeRadians notNil and: [ latitudeRadians notNil ] ]
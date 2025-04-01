testing
isValid

	^ longitudeMin notNil and: [ 
		  longitudeMax notNil and: [ 
			  latitudeMin notNil and: [ latitudeMax notNil ] ] ]
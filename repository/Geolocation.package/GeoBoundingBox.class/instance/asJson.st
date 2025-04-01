accessing
asJson

	^ { 
		  { 
			  longitudeMin radiansToDegrees asScaledDecimal:  5.
			  latitudeMin radiansToDegrees asScaledDecimal: 5. }.
		  { 
			  longitudeMax radiansToDegrees asScaledDecimal: 5.
			  latitudeMax radiansToDegrees asScaledDecimal: 5. } }
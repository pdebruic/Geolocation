instance-creation
fromOSMBoundingBoxJson: aCollection

	| bbox |
	
	self assert: aCollection size = 4.
	bbox := self new
		        latitudeMin: aCollection first degreesToRadians;
		        latitudeMax: aCollection second degreesToRadians;
		        longitudeMin: aCollection third degreesToRadians;
		        longitudeMax: aCollection fourth degreesToRadians;
		        yourself.
	^ bbox
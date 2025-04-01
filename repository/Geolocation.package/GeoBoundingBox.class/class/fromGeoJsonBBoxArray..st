instance-creation
fromGeoJsonBBoxArray: aCollection

	| bbox |
	1 haltIf:[ aCollection size ~= 4].
	bbox := self new
		        longitudeMin: aCollection first degreesToRadians ;
		        latitudeMin: aCollection second degreesToRadians;
		        longitudeMax: aCollection third degreesToRadians;
		        latitudeMax: aCollection fourth degreesToRadians;
		        yourself.



	^ bbox
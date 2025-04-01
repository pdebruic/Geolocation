instance-creation
fromRadianArray: aCollection

	| bbox |
	1 haltIf:[ aCollection size ~= 4].
	bbox := self new
		        longitudeMin: aCollection first;
		        latitudeMin: aCollection second;
		        longitudeMax: aCollection third;
		        latitudeMax: aCollection fourth;
		        yourself.



	^ bbox
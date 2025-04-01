instance-creation
fromGeoJsonPoints: aCollection 

	|  bbox pi |
	pi:=Float pi. 
	bbox:=self new 
	 longitudeMin:  pi;
		  latitudeMin: pi;
		  longitudeMax: pi * -1;
		  latitudeMax: pi* -1;
		  yourself.
	
	aCollection do: [ :somePoints |  self fromGeoJsonPoints: somePoints considering: bbox].
	
	^ bbox
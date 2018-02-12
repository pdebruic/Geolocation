accessing
latitudeRadiusAt: aLatitude
	|pr er  |
	pr:=self polarRadius .
	er:=self equitorialRadius .

	^( 
	((er squared * (aLatitude  cos)) squared +(pr squared * (aLatitude  sin)) squared)
	/
	((er  * (aLatitude  cos)) squared + (pr * (aLatitude  sin))squared)
	) sqrt
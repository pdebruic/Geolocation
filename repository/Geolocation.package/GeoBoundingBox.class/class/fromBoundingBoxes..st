instance-creation
fromBoundingBoxes: aCollection

	| longMin longMax latMin latMax |
	longMin := latMin := Float pi.
	longMax := latMax := Float pi * -1.
	aCollection do: [ :bbox | 
		bbox longitudeMin < longMin ifTrue: [ longMin := bbox longitudeMin ].
		bbox latitudeMin < latMin ifTrue: [ latMin := bbox latitudeMin ].
		bbox longitudeMax > longMax ifTrue: [ longMax := bbox longitudeMax ].
		bbox latitudeMax > latMax ifTrue: [ latMax := bbox latitudeMax ] ].
	^ self new
		  longitudeMin: longMin;
		  latitudeMin: latMin;
		  longitudeMax: longMax;
		  latitudeMax: latMax;
		  yourself
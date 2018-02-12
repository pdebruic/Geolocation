as yet unclassified
encodeLatitude: aLatitude andLongitude: aLongitude toPrecision: aPrecision
	| evenBit latitudeMax latitudeMin longitudeMax longitudeMin mid bit base32Index charsAdded |
	1 halt.
	"this doesn't work"
	
	evenBit := true.
	latitudeMax := 90.0.
	latitudeMin := -90.0.
	longitudeMax := 180.0.
	longitudeMin := -180.0.
	mid := 0.
	bit := 1.
	base32Index := 0.
	charsAdded := 1.
	geohash := String new: aPrecision.
	[ charsAdded <= aPrecision ]
		whileTrue: [ evenBit
				ifTrue: [ mid := (longitudeMax + longitudeMin) / 2.0.
					aLongitude >= mid
						ifTrue: [ base32Index := base32Index * 2 + 1.
							longitudeMin := mid ]
						ifFalse: [ base32Index := base32Index * 2.
							longitudeMax := mid ] ]
				ifFalse: [ mid := (latitudeMax + latitudeMin) / 2.0.
					latitudeMax >= mid
						ifTrue: [ base32Index := base32Index * 2 + 1.
							latitudeMin := mid ]
						ifFalse: [ base32Index := base32Index * 2.
							latitudeMax := mid ] ].
			evenBit := evenBit not.
			bit < 5
				ifTrue: [ bit := bit + 1 ]
				ifFalse: [ | toadd |
					toadd := self base32Characters at: base32Index .
					
					geohash at: charsAdded put: (self base32Characters at: base32Index).
					bit := 1.
					base32Index := 0.
					charsAdded := charsAdded + 1 ] ].
	^ geohash
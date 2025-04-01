instance-creation
fromGeoJsonPoints: somePoints considering: bbox

	(self containsPoints: somePoints)
		ifTrue: [ 
			| long lat |
			somePoints do: [ :ptArray | 
				long := ptArray first.
				lat := ptArray second.
				bbox expandBoundingBoxWith: long degreesToRadians and: lat degreesToRadians ] ]
		ifFalse: [ 
			somePoints do: [ :pointCol | 
				self fromGeoJsonPoints: pointCol considering: bbox ] ]
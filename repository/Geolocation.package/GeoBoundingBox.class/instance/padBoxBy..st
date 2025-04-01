updating
padBoxBy: aPercent

	| padding |
	padding := (longitudeMax - longitudeMin) abs * aPercent.
	longitudeMin := longitudeMin - padding.
	longitudeMax := longitudeMax + padding.
	latitudeMin := latitudeMin - padding.
	latitudeMax := latitudeMax + padding
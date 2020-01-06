comparing
hash
	^ (latitudeMax hash hashMultiply + longitudeMax hash) hashMultiply
		+ (latitudeMin hash hashMultiply + longitudeMin hash) hashMultiply
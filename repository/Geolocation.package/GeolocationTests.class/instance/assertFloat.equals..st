tests
assertFloat:aFloat equals: aString
self assert: (aFloat printShowingDecimalPlaces: 3) equals: aString
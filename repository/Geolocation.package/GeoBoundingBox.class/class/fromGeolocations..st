instance-creation
fromGeolocations: aCollection
  | longMin longMax latMin latMax |
  longMin := latMin := 180.
  longMax := latMax := -180.
  aCollection
    do: [ :geo | 
      geo longitude < longMin
        ifTrue: [ longMin := geo longitude ].
      geo latitude < latMin
        ifTrue: [ latMin := geo latitude ].
      geo longitude > longMax
        ifTrue: [ longMax := geo longitude ].
      geo latitude > latMax
        ifTrue: [ latMax := geo latitude ] ].
  ^ self new
    longitudeMin: longMin degreesToRadians;
    latitudeMin: latMin  degreesToRadians;
    longitudeMax: longMax  degreesToRadians;
    latitudeMax: latMax  degreesToRadians;
    yourself
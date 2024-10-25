as yet unclassified
fromGoogleJson: someJson
  | sw ne |
  sw := someJson at: 'southwest'.
  ne := someJson at: 'northeast'.
  ^ self new
    longitudeMin: ((sw at: 'lng') degreesToRadians asScaledDecimal: 6);
    latitudeMin: ((sw at: 'lat') degreesToRadians asScaledDecimal: 6);
    longitudeMax: ((ne at: 'lng') degreesToRadians asScaledDecimal: 6);
    latitudeMax: ((ne at: 'lat') degreesToRadians asScaledDecimal: 6);
    yourself
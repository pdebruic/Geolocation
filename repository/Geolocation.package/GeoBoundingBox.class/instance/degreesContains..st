testing
degreesContains: aGeolocation
  ^ (aGeolocation latitudeDegrees between: latitudeMin and: latitudeMax)
    and: [ aGeolocation longitudeDegrees between: longitudeMin and: longitudeMax ]
testing
fixWrongGeoInfo
  | isInsane |
  isInsane := latitudeDegrees notNil
    and: [ latitudeDegrees > 90 or: [ latitudeDegrees < 90 ] ].
  isInsane := isInsane
    or: [ 
      longitudeDegrees notNil
        and: [ longitudeDegrees > 180 or: [ longitudeDegrees < 180 ] ] ].
  ^ isInsane
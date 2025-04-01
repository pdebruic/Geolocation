instance creation
fromStadiaJson: aCollection

	^ self new
		  longitudeDegrees: aCollection first;
		  latitudeDegrees: aCollection second;
		  yourself
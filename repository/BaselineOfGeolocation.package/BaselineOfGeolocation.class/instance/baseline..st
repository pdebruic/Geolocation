baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec package: 'Geolocation'.
		spec group: 'Core' with: #( 'Geolocation' ).
		spec group: 'default' with: #( 'Core' ) ]
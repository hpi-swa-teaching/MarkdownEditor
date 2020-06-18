Utils
lint: aLinterRule

	|testRunner |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.

	testRunner runOnTests: {aLinterRule} andTestObjects: self testObjects.

	^ (self testObjects
		collect: [ :testObject | testObject resultOf: aLinterRule ])
		collect: [ :result | result value ]
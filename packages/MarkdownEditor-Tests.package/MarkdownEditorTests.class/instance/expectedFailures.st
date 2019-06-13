running
expectedFailures
	
	^ Smalltalk version = 'Squeak5.0' 
		ifTrue: [#(testApplyingThemeDoesNotThrowError)]
		ifFalse: [#()]
running
expectedFailures

	^ Smalltalk version = 'Squeak5.0'
		ifTrue: [#(testApplyingThemeDoesNotThrowErrorForBlockStyling
					testApplyingThemeDoesNotThrowErrorForInlineStyling)]
		ifFalse: [#()]
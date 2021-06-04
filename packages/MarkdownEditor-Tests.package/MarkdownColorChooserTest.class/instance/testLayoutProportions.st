tests
testLayoutProportions

	| width |
	width := 300.
	chooser width: width.
	
	self assert: width * 2/3 equals: advancedPicker width.
	self assert: width * 2/3 equals: chooser advancedPickerWidth.
	self assert: width * 1/3 equals: chooser simpleChooserWidth
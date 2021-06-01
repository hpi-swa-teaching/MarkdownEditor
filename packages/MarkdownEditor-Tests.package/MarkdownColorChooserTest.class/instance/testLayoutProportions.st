as yet unclassified
testLayoutProportions

	chooser width: 300.
	
	self assert: advancedPicker width = 200.
	self assert: chooser advancedPickerWidth = 200.
	self assert: chooser simpleChooserWidth = 100
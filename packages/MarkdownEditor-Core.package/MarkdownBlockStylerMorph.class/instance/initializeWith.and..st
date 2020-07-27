initialize
initializeWith: canChangeFontSize and: canChangeFontColor

	self initializeColor.
	self initializeFontColorPicker.
	self initializeSliderLabel.
	self initializeFontSizeSlider.
		
	self attachMorphsWith: canChangeFontSize and: canChangeFontColor
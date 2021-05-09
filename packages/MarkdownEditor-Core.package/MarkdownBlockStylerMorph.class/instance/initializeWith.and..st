initialize
initializeWith: canChangeFontSize and: canChangeFontColor

	self initializeContentBox.
	self initializeFontColorPicker.
	self initializeSliderLabel.
	self initializeFontSizeSlider.
		
	self attachMorphsWith: canChangeFontSize and: canChangeFontColor
initialize
initializeWith: canChangeFontSize and: canChangeFontColor and: aClassLabel

	self color: Color transparent.
	self fontColorPicker: MarkdownColorChooser new.
	self fontColorPicker addDependent: self.
	
	self initializeLabelsWith: aClassLabel.
	self initializeFontSizeSlider.
		
	self attachMorphsWith: canChangeFontSize and: canChangeFontColor
initialize
attachMorphsWith: canChangeFontSize and: canChangeFontColor
		
	canChangeFontSize ifTrue: [
		self addMorph: self fontSizeSlider.
		self addMorph: self sliderLabel].
	canChangeFontColor ifTrue: [self addMorph: self fontColorPicker].
initialize
attachMorphsWith: canChangeFontSize and: canChangeFontColor
		
	self addMorph: self classLabel.
	canChangeFontSize ifTrue: [
		self addMorphFront: self fontSizeSlider.
		self addMorphFront: self sliderLabel].
	canChangeFontColor ifTrue: [self addMorphBack: self fontColorPicker]
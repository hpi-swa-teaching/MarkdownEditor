changing
adjustTo: aStyleSettings

	self styleSettings: aStyleSettings.
	
	self fontSizeSlider adjustToValue: (aStyleSettings fontSizes at: self classLabel).
	self sliderLabel contents: (aStyleSettings fontSizes at: self classLabel) "asInteger" asString.
	self fontColorPicker originalColor: (aStyleSettings fontColors at: self classLabel).
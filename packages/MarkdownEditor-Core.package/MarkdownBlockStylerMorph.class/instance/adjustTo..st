changing
adjustTo: aStyleSettings

	self styleSettings: aStyleSettings.
	
	self fontSizeSlider adjustToValue: (aStyleSettings fontSizes at: self classLabel).
	self sliderLabel contents: (aStyleSettings fontSizes at: self classLabel) "asInteger" asString.
	self fontColorPicker adjustTo: (aStyleSettings fontColors at: self classLabel)
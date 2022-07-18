changing
adjustTo: aStyleSettings

	self styleSettings: aStyleSettings.
	self fontSizeSlider adjustToValue: (aStyleSettings fontSizes at: self classLabel text).
	self sliderLabel contents: (aStyleSettings fontSizes at: self classLabel text) asString.
	self fontColorPicker adjustTo: (aStyleSettings fontColors at: self classLabel text)
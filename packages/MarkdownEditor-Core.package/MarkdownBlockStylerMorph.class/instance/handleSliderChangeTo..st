changing
handleSliderChangeTo: aValue

	self sliderLabel contents: aValue asInteger asString.
	self styleSettings fontSizes at: self classLabel put: aValue asInteger.
	self changed: self.
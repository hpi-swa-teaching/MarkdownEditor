initialize
initializeFontSizeSlider

	self fontSizeSlider: (MarkdownSlider new target: self; 
		actionSelector: #handleSliderChangeTo:; 
		minVal: MarkdownStyleSettings minFontSize; 
		maxVal: MarkdownStyleSettings maxFontSize; 
		orientation: #horizontal; 
		yourself)

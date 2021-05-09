initialize
initializeFontSizeSlider

	self fontSizeSlider: (MDSlider new target: self; 
		actionSelector: #handleSliderChangeTo:; 
		minVal: MarkdownStyleSettings minFontSize; 
		maxVal: MarkdownStyleSettings maxFontSize; 
		position: 90@10; 
		orientation: #horizontal; 
		height: 40; width: 100; 
		yourself)

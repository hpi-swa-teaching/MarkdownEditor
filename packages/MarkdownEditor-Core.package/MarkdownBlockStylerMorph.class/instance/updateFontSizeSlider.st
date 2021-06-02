appearance
updateFontSizeSlider

	self fontSizeSlider 
		width: self width / 6;
		height: self height - (2 * self offset);
		right: self sliderLabel left - self offset;
		top: self offset
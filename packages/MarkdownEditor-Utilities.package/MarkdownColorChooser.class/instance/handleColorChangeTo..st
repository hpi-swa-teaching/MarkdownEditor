changing
handleColorChangeTo: aColor

	self blockStyler styleSettings fontColors at: self blockStyler classLabel put: aColor.
	self blockStyler changed: self.
	self advancedColorPicker originalColor: aColor
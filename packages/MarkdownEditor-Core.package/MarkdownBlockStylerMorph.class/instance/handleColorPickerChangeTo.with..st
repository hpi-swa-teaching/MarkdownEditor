changing
handleColorPickerChangeTo: aColor with: aSourceHand

	self styleSettings fontColors at: self classLabel put: aColor.
	self changed: self.
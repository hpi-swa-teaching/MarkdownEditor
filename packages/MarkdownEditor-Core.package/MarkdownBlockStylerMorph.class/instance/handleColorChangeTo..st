changing
handleColorChangeTo: aColor

	self styleSettings fontColors at: self classLabel put: aColor.
	self changed: self.
	
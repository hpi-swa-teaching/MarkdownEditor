initialize
initializeWith: aBlockStyler

	self initializeContentBox.
	self initializeAdvancedColorPicker.
	self initializeSimpleColorPicker.
	
	self addMorphFront: self advancedColorPicker

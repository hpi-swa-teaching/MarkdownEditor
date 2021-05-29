initialize
initialize

	super initialize.
	self color: Color transparent.
	self initializeAdvancedColorPicker.
	self initializeSimpleColorPicker.
	
	self simpleColorChoosers do: [:box | self addMorph: box].
	self addMorphFront: self advancedColorPicker

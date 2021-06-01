initialize
initialize

	super initialize.
	self color: Color transparent.
	self simpleColorChoosers: OrderedCollection new.
	self initializeAdvancedColorPicker.
	self initializeSimpleColorChooser.
	
	self simpleColorChoosers do: [:box | self addMorph: box].
	self addMorphFront: self advancedColorPicker

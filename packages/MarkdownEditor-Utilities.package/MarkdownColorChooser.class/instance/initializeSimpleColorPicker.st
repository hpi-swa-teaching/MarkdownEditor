initialize
initializeSimpleColorPicker

	self simpleColorChoosers: OrderedCollection new.
	self initializeColorBoxes.
	self simpleColorChoosers do: [:box | self addMorph: box]
initialize
initializeSimpleColorPicker

	self simpleColorChoosers: OrderedDictionary new.
	self initializeColorBoxes.
	self simpleColorChoosers do: [:box | self addMorph: box]
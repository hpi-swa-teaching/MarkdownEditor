initialize
initializeSimpleColorChooser

	self defaultColors do: [:color | self simpleColorChoosers add:
				(self initializeColorBoxWith: color)]
initialize
initializeSimpleColorPicker

	| xOffset counter yOffset |
	self simpleColorChoosers: OrderedCollection new.
	
	xOffset := 230.
	yOffset := 13.
	counter := 0.
	self defaultColors do: [:color | self simpleColorChoosers add:
				(self initializeColorBoxAt: (xOffset@yOffset) with: color).
			xOffset := (xOffset + 23).
			counter := counter + 1.
			counter = 3 ifTrue: [yOffset := yOffset + 28. xOffset := 230]].
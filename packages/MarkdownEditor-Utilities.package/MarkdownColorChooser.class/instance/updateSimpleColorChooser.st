appearance
updateSimpleColorChooser

	| yOffset yIncrement xIncrement boxInRow|
	boxInRow := (self totalSimpleColorChooser / 2).
	yIncrement := self calculateOffsetFor: 2 boxesWith: self height.
	yOffset := yIncrement.
	xIncrement := self calculateOffsetFor: boxInRow boxesWith: self simpleChooserWidth.
	
	self updateSimpleColorCooserPositionsWith: yOffset and: yIncrement and: xIncrement for: boxInRow
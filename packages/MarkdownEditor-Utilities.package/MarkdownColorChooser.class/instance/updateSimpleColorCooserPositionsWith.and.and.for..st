appearance
updateSimpleColorCooserPositionsWith: yOffset and: yIncrement and: xIncrement for: boxInRow

	| counter y|
	counter := 0.
	y := yOffset.
	
	self simpleColorChoosers do:
		[:colorBox | | xOffset |
			xOffset := (counter * self simpleColorChoosersSize) + (counter * xIncrement).
			colorBox position: self position + (xOffset @ y).
			counter := counter + 1.
			counter = boxInRow ifTrue: [y := y + self simpleColorChoosersSize + yIncrement.
				counter := 0]]
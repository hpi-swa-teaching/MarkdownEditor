character position
reduceCurrentLineTo: aString
	
	| offset |
	offset := self currentLine size - aString size.
	self charPos: self charPos + offset.
	self currentLine: aString
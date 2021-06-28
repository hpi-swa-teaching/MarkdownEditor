character position
setCurrentLine: aString

	| offset |
	offset := self currentLine size.
	self charPos: charPos + offset.
	self currentLine: aString.
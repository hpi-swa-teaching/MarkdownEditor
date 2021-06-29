styling
completeTextElementFrom: aText

	| indentString |
	indentString := ''.
	self indention timesRepeat: [indentString := indentString, ' '].
	^ (indentString, self openingFence, self info) asText, aText, self closingFence asText
styling
applyStylingWith: aMarkdownStyler

	| indentationText |
	indentationText := ''.
	self indentation timesRepeat: [indentationText := indentationText, ' '].
	^ indentationText asText
styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ''.
	self indentation timesRepeat: [text := text, ' '].
	^  (text, Character cr) asText
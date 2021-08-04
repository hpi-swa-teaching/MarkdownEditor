add to inline elements
addDelimiterFrom: aString

	| delimiter |
	delimiter := MarkdownDelimiter newFromPadded: aString.
	self delimiters add: delimiter.
	self addToInlineElements: delimiter
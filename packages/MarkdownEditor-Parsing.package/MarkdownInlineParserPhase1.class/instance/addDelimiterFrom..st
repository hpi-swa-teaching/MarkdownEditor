add to inline elements
addDelimiterFrom: aString

	| delimiter |
	delimiter := MarkdownDelimiter newFrom: aString.
	self delimiters add: delimiter.
	self inlineElements add: delimiter.
	self previousChar: delimiter type
new inline parsing
addToDelimitersFrom: aRawString

	| currentDelimiter delimiterToAdd |
	currentDelimiter := aRawString allRegexMatches: '^\*{1,2}'.
	delimiterToAdd := MarkdownDelimiter newFrom: currentDelimiter first with: self inlineContainer size + 1.
	self delimiters add: delimiterToAdd.
	self inlineContainer add: delimiterToAdd.
	
	^ aRawString copyFrom: currentDelimiter first size + 1 to: aRawString size
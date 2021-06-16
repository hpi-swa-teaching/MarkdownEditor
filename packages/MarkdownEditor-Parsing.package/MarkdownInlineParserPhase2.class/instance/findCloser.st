helper
findCloser

	| closerPosition closer |
	
	closerPosition := self delimiters findFirst: [:del | del isPotentialCloser].
	(closerPosition = 0)
		ifTrue: [^ MarkdownDelimiter new].
	
	closer := self delimiters at: closerPosition.
	closer index: (self inlineIndexOf: closer).
	^ closer
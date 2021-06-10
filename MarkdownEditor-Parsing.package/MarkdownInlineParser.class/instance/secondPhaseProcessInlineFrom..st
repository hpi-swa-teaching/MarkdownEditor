new inline parsing
secondPhaseProcessInlineFrom: aRawString

	| currentPosition openersBottom closerPosition |
	currentPosition := 1.
	openersBottom := 0.
	
	closerPosition := self delimiters findLast: [:delimiter | delimiter type = self delimiters first type and: [delimiter count = self delimiters first count]].
	closerPosition = 0
		ifTrue: []
		ifFalse: [(((self delimiters at: closerPosition) count >= 2) and: self delimiters first count >= 2)
					ifTrue: [self processStrongEmphasisFrom: self delimiters first index + 1 to: (self delimiters at: closerPosition) index - 1.
							self inlineContainer removeAt: (self delimiters at: closerPosition) index.
							self delimiters removeAt: closerPosition.
							self inlineContainer removeAt: self delimiters first index.
							self delimiters removeAt: 1.]]
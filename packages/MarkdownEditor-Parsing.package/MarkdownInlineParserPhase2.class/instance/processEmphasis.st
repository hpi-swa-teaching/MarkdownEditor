parse
processEmphasis

	| emphType end start emph |
	emphType := self decideEmphType.
	start := self currentOpener inlineIndex + 1.
	end := self currentCloser inlineIndex - 1.
	emph := self createEmphWith: emphType with: (self inlineElements copyFrom: start to: end).
	
	self 
		inlineElements:	
			(LinkedList newFrom: 
				(self inlineElements copyReplaceFrom: start to: end with: (LinkedList newFrom: {emph})));
		cleanUpDelimiter: self currentOpener for: emphType;
		cleanUpDelimiter: self currentCloser for: emphType

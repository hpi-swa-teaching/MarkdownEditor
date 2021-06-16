parse
processEmphasis

	| emphType end start emph |
	emphType := self decideEmphType.
	start := self currentOpener index + 1.
	end := self currentCloser index - 1.
	emph := self createEmphWith: emphType with: (self inlineElements copyFrom: start to: end).
	
	self inlineElements: (self inlineElements copyReplaceFrom: start to: end with: emph asOrderedCollection).
	self cleanUpDelimiter: self currentOpener for: emphType.	
	self cleanUpDelimiter: self currentCloser for: emphType
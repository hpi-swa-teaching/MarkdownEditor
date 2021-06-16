parse
parseInline

	[self currentCloser: self findCloser.
		(self currentCloser isValid) 
			ifTrue: [self currentOpener: self findOpener.
					(self currentOpener isValid)
						ifTrue: [self processEmphasis]].
			self cleanDelimiters.
	] doWhileTrue: [self delimiters notEmpty].
	
	self inlineElements: (self cleanUp: self inlineElements)
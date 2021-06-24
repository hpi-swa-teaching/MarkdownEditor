parse
parseInline

	[self currentCloser: self findCloser.
 	(self currentCloser isValid)
		ifTrue: [self currentOpener: self findOpener.
				(self currentOpener isValid)
					ifTrue: [self processEmphasis].
				self cleanDelimiters]
 		ifFalse: [self delimiters removeAll].
	] doWhileTrue: [self delimiters notEmpty]

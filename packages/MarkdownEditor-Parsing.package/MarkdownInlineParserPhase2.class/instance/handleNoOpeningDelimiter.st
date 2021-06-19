parse
handleNoOpeningDelimiter

	self delimiters:
		(LinkedList newFrom:
			(self delimiters
				copyFrom: (self delimiters indexOf: self currentCloser)
				to: self delimiters size)).       
    	self currentCloser isPotentialOpener
      	ifFalse: [self delimiters remove: self currentCloser].
        ^ MarkdownDelimiter new

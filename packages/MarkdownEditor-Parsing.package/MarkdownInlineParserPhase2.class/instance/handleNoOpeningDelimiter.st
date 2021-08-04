parse
handleNoOpeningDelimiter

	self currentCloser beNotPotentialCloser.       
    	self currentCloser isPotentialOpener
      	ifFalse: [self delimiters remove: self currentCloser].
        ^ MarkdownDelimiter new

parse
handleNoOpeningDelimiter

	self delimiters: (self delimiters copyFrom: self currentCloser index to: self delimiters size).
			self currentCloser isPotentialOpener
				ifFalse: [self delimiters remove: self currentCloser].
				^ MarkdownDelimiter new
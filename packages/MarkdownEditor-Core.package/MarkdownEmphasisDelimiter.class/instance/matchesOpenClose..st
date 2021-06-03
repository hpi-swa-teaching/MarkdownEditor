testing
matchesOpenClose: aMarkdownEmphasisDelimiter 

	^ (self matchesOpenerOrCloser: aMarkdownEmphasisDelimiter)
		and: [self matchesOpenerAndCloser: aMarkdownEmphasisDelimiter]
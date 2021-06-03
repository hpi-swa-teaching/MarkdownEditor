testing
matchesOpenerOrCloser: aMarkdownEmphasisDelimiter 

	^ (self isOpener
			and: [aMarkdownEmphasisDelimiter isCloser])
		or: [self isCloser
				and: [aMarkdownEmphasisDelimiter isOpener]]
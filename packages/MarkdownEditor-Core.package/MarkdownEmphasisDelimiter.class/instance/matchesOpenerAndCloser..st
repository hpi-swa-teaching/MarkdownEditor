testing
matchesOpenerAndCloser: aMarkdownEmphasisDelimiter 

	^ (self isOpenerAndCloser
		or: [aMarkdownEmphasisDelimiter isOpenerAndCloser])
		==> [(self length + aMarkdownEmphasisDelimiter length isDivisibleBy: 3)
				==> [(self length isDivisibleBy: 3)
						and: [aMarkdownEmphasisDelimiter length isDivisibleBy: 3]]]
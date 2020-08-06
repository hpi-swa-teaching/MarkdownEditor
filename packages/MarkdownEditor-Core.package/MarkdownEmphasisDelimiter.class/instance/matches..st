testing
matches: aMarkdownEmphasisDelimiter

	 ^ aMarkdownEmphasisDelimiter type = 'EmphasisDelimiter' 
		and: [((self isOpener and: [aMarkdownEmphasisDelimiter isCloser])
		or: [self isCloser and: [aMarkdownEmphasisDelimiter isOpener]])
		and: [(self isOpenerAndCloser or: [aMarkdownEmphasisDelimiter isOpenerAndCloser])
			==> [((self length + aMarkdownEmphasisDelimiter length) isDivisibleBy: 3) 
				==> [(self length isDivisibleBy: 3) 
					and: [aMarkdownEmphasisDelimiter length isDivisibleBy: 3]]]]]
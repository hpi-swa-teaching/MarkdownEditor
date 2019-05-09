testing
matches: aMarkdownDelimiterEmphasis

	 ^ (self isOpenerAndCloser or: [aMarkdownDelimiterEmphasis isOpenerAndCloser])
			==> [((self length + aMarkdownDelimiterEmphasis length) isDivisibleBy: 3) 
				==> [(self length isDivisibleBy: 3) 
					and: [aMarkdownDelimiterEmphasis length isDivisibleBy: 3]]]

	
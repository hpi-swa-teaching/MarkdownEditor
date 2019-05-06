parsing
findOpenerFor: aMarkdownDelimiter ifFound: foundBlock ifNone: noneBlock

	| previousTokens endIndex |
	endIndex := (self tokens indexOf: aMarkdownDelimiter) - 1.
	previousTokens := (self tokens copyFrom: 1 to: endIndex) reversed.
	previousTokens detect: [:token | 
			token isDelimiter 
				and: [token isLeftFlanking] 
				and: [(aMarkdownDelimiter isOpenerAndCloser or: [token isOpenerAndCloser])
					==> [((aMarkdownDelimiter length + token length) isDivisibleBy: 3) 
						==> [(aMarkdownDelimiter length isDivisibleBy: 3) 
							and: [token length isDivisibleBy: 3]]]]]
		ifFound: [:match | foundBlock value: match]
		ifNone: noneBlock
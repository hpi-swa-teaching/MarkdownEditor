parsing - inline
process: aRawString without: aCollectionOfPossibleLinks

	| startingIndex endIndex string |
	startingIndex := 1.
	aCollectionOfPossibleLinks
		do: [:link | 
			endIndex := aRawString findString: link startingAt: startingIndex.
			string := aRawString copyFrom: startingIndex to: endIndex - 1.
			self inlineContainer add: (MarkdownString2 newFrom: string).
			self inlineContainer add: (self createLinkFrom: link).
			startingIndex := endIndex + link size].
	startingIndex = aRawString size
		ifFalse: [self inlineContainer add: (MarkdownString2 newFrom: (aRawString copyFrom: startingIndex to: aRawString size)).]
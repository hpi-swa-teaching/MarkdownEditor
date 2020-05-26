tests - recognition
testMayBeginWithBracket

	self assert: (MarkdownOpeningLinkDelimiter mayBeginWith: $[).
		
	self assert: (MarkdownClosingLinkDelimiter mayBeginWith: $])
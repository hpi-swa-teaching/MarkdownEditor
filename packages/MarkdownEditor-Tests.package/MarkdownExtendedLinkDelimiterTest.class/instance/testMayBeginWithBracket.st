tests - recognition
testMayBeginWithBracket

	self assert: (MarkdownOpeningExtendedLinkDelimiter mayBeginWith: $[).
		
	self assert: (MarkdownClosingExtendedLinkDelimiter mayBeginWith: $])
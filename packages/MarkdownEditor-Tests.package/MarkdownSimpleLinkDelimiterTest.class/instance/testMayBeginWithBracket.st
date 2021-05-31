tests - recognition
testMayBeginWithBracket

	self assert: (MarkdownOpeningSimpleLinkDelimiter mayBeginWith: $<).
		
	self assert: (MarkdownClosingSimpleLinkDelimiter mayBeginWith: $>)
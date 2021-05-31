tests - links
testLinkAttributes

	| opener closer link |
	opener := MarkdownOpeningSimpleLinkDelimiter newFor: '[[[[' at: 1.
	closer := MarkdownClosingSimpleLinkDelimiter newFor: ']]]' at: 6.
					
	link := closer linkStartingAt: opener. 	
	self assert: TextEmphasis underlined equals: link textAttribute.
	self assert: TextColor blue equals: link colorAttribute.
	self assert: 4 equals: link startPosition.
	self assert: 6 equals: link endPosition
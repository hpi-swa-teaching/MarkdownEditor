tests - extending
testExtend

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[' at: 1.
	token append: $[.
	self assert: '[[' equals: token content.
			
	token := MarkdownClosingLinkDelimiter newFor: ']' at: 1.
	token append: $].
	self assert: ']]' equals: token content
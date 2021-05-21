tests - extending
testExtend

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[' at: 1.
	token append: $[.
	self assert: '[[' equals: token content.
			
	token := MarkdownClosingExtendedLinkDelimiter newFor: ']' at: 1.
	token append: $].
	self assert: ']]' equals: token content
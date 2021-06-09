tests - extending
testExtend

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[' at: 1.
	token append: $[.
	self assert: '[[' equals: token content.
			
	token := MarkdownClosingSimpleLinkDelimiter newFor: ']' at: 1.
	token append: $].
	self assert: ']]' equals: token content
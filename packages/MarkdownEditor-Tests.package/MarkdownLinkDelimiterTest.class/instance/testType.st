tests - state
testType

	| token |
	token := MarkdownOpeningLinkDelimiter newFor: '[' at: 10.
	self assert: 'LinkDelimiter' equals: token type
tests - state
testType

	| token |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '[' at: 10.
	self assert: 'LinkDelimiter' equals: token type
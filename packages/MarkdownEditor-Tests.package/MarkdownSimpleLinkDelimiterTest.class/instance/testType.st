tests - state
testType

	| token |
	token := MarkdownOpeningSimpleLinkDelimiter newFor: '[' at: 10.
	self assert: 'SimpleLinkDelimiter' equals: token type
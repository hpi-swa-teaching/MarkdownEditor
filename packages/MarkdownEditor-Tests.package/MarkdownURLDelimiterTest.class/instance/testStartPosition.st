tests - state
testStartPosition

	| token |
	token := MarkdownOpeningURLDelimiter newFor: '(' at: 10.
	self assert: 'UrlDelimiter' equals: token type.
	
	token := MarkdownClosingURLDelimiter newFor: ')' at: 10.
	self assert: 'UrlDelimiter' equals: token type
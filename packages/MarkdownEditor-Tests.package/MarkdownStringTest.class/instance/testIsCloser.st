tests - state
testIsCloser

	| string |
	
	string := MarkdownString newFor: 'text' at: 6.
	self deny: string isCloser
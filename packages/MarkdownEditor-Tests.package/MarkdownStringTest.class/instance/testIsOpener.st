tests - state
testIsOpener

	| string |
	
	string := MarkdownString newFor: 'text' at: 6.
	self deny: string isOpener
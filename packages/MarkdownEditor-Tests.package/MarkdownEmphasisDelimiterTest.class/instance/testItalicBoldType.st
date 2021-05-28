tests - extending
testItalicBoldType

	| token |
	token := MarkdownItalicBoldDelimiter newFor: '*' at: 1.
	token append: $*.
	self assert: token type equals: 'ItalicBoldDelimiter'
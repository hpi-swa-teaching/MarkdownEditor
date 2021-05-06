tests - emphases
testSameDelimitersCreateBoldEmphasis

	| opener closer emphasis |
	opener := MarkdownItalicBoldDelimiter newFor: '**' at: 1.
	closer := MarkdownItalicBoldDelimiter newFor: '**' at: 5.
					
	emphasis := closer emphasisStartingAt: opener. 	
	self assert: TextEmphasis bold equals: emphasis textAttribute.
	self assert: 1 equals: emphasis startPosition.
	self assert: 6 equals: emphasis endPosition
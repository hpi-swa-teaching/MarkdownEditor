tests - emphases
testDifferentDelimitersCreateBoldEmphasis

	| opener closer emphasis |
	opener := MarkdownItalicBoldDelimiter newFor: '****' at: 1.
	closer := MarkdownItalicBoldDelimiter newFor: '***' at: 6.
					
	emphasis := closer emphasisStartingAt: opener. 	
	self assert: TextEmphasis bold equals: emphasis textAttribute.
	self assert: 3 equals: emphasis startPosition.
	self assert: 7 equals: emphasis endPosition
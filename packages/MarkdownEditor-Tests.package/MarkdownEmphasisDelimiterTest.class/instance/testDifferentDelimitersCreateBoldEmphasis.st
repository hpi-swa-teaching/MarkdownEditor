tests - emphases
testDifferentDelimitersCreateBoldEmphasis

	| opener closer emphasis |
	opener := MarkdownEmphasisDelimiter newFor: '****' at: 1.
	closer := MarkdownEmphasisDelimiter newFor: '***' at: 6.
					
	emphasis := closer attributeStartingAt: opener. 	
	self assert: TextEmphasis bold equals: emphasis textAttribute.
	self assert: 3 equals: emphasis startPosition.
	self assert: 7 equals: emphasis endPosition
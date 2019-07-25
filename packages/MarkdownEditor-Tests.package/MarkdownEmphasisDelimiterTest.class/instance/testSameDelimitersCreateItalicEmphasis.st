tests - emphases
testSameDelimitersCreateItalicEmphasis

	| opener closer emphasis |
	opener := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	closer := MarkdownEmphasisDelimiter newFor: '*' at: 5.
					
	emphasis := closer emphasisStartingAt: opener. 	
	self assert: TextEmphasis italic equals: emphasis textAttribute.
	self assert: 1 equals: emphasis startPosition.
	self assert: 5 equals: emphasis endPosition
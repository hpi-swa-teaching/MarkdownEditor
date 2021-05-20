tests - emphases
testDifferentDelimitersCreateStrikeEmphasis

	| opener closer emphasis |
	opener := MarkdownStrikeDelimiter newFor: '~~~~' at: 1.
	closer := MarkdownStrikeDelimiter newFor: '~~~' at: 6.
					
	emphasis := closer emphasisStartingAt: opener. 	
	self assert: TextEmphasis struckOut equals: emphasis textAttribute.
	self assert: 3 equals: emphasis startPosition.
	self assert: 7 equals: emphasis endPosition
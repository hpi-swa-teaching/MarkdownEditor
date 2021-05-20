tests - emphases
testSameDelimitersCreateStrikeEmphasis

	| opener closer emphasis |
	opener := MarkdownStrikeDelimiter newFor: '~~' at: 1.
	closer := MarkdownStrikeDelimiter newFor: '~~' at: 5.
					
	emphasis := closer emphasisStartingAt: opener. 	
	self assert: TextEmphasis struckOut equals: emphasis textAttribute.
	self assert: 1 equals: emphasis startPosition.
	self assert: 6 equals: emphasis endPosition
tests - attributes
testDifferentDelimitersCreateBoldAttribute

	| opener closer attribute |
	opener := MarkdownEmphasisDelimiter new
					content: '****';
					startPosition: 1;
					yourself.
	closer := MarkdownEmphasisDelimiter new
					content: '***';
					startPosition: 6;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeBold).
	self assert: 3 equals: attribute startPosition.
	self assert: 7 equals: attribute endPosition
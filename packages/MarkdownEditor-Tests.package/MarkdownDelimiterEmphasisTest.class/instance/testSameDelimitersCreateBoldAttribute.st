tests - attributes
testSameDelimitersCreateBoldAttribute

	| opener closer attribute |
	opener := MarkdownEmphasisDelimiter new
					content: '**';
					startPosition: 1;
					yourself.
	closer := MarkdownEmphasisDelimiter new
					content: '**';
					startPosition: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: attribute startPosition.
	self assert: 6 equals: attribute endPosition
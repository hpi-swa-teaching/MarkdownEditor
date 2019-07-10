tests - attributes
testEmphasisAttributeItalic

	| opener closer attribute |
	opener := MarkdownEmphasisDelimiter new
					content: '*';
					startPosition: 1;
					yourself.
	closer := MarkdownEmphasisDelimiter new
					content: '*';
					startPosition: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: MarkdownAttribute italic textAttribute equals: attribute textAttribute.
	self assert: 1 equals: attribute startPosition.
	self assert: 5 equals: attribute endPosition
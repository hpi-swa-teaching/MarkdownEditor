tests - attributes
testEmphasisAttributeItalic

	| opener closer attribute |
	opener := MarkdownDelimiterEmphasis new
					content: '*';
					startPosition: 1;
					yourself.
	closer := MarkdownDelimiterEmphasis new
					content: '*';
					startPosition: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: attribute startPosition.
	self assert: 5 equals: attribute endPosition
tests - attributes
testEmphasisAttributeItalic

	| opener closer attribute |
	opener := MarkdownDelimiterEmphasis new
					content: '*';
					position: 1;
					yourself.
	closer := MarkdownDelimiterEmphasis new
					content: '*';
					position: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: attribute start.
	self assert: 5 equals: attribute end
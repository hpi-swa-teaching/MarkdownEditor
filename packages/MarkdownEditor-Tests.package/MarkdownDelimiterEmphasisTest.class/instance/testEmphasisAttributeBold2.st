tests
testEmphasisAttributeBold2

	| opener closer attribute |
	opener := MarkdownDelimiterEmphasis new
					content: '****';
					position: 1;
					yourself.
	closer := MarkdownDelimiterEmphasis new
					content: '***';
					position: 6;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeBold).
	self assert: 3 equals: attribute start.
	self assert: 7 equals: attribute end
tests
testEmphasisAttributeBold

	| opener closer attribute |
	opener := MarkdownDelimiterEmphasis new
					content: '**';
					position: 1;
					yourself.
	closer := MarkdownDelimiterEmphasis new
					content: '**';
					position: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: (attribute isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: attribute start.
	self assert: 6 equals: attribute end
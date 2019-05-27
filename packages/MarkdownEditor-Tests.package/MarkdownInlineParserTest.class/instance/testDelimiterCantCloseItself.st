tests - tokenization
testDelimiterCantCloseItself
	
	| opener openCloser foundOpener |
	opener := MarkdownEmphasisDelimiter new 
		content: '*'; 
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	openCloser := MarkdownEmphasisDelimiter new 
		content: '*'; 
		isLeftFlanking: true; 
		isRightFlanking: true; 
		yourself.
	
	inlineParser tokens
		addAll: {opener. 
				(MarkdownString new content: 'f'; yourself). 
				openCloser. (MarkdownString new content: 'b'; yourself)}.
	
	inlineParser findOpenerFor: openCloser 
		ifFound: [:o | foundOpener := o].
	self deny: (openCloser = foundOpener).
	self assert: opener equals: foundOpener
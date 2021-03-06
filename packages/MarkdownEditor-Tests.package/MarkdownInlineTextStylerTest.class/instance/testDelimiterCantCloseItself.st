tests - tokenization
testDelimiterCantCloseItself
	
	| opener openCloser |
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
	
	inlineTextStyler tokens
		addAll: {opener. 
				(MarkdownString new content: 'f'; yourself). 
				openCloser. 
				(MarkdownString new content: 'b'; yourself)}.
	
	inlineTextStyler findOpenerFor: openCloser 
		ifFound: [:foundOpener | 
			self deny: (openCloser = foundOpener).
			^ self assert: opener equals: foundOpener].
	self fail
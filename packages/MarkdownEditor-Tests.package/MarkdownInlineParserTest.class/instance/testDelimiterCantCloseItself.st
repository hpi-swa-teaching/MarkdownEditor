tests - tokenization
testDelimiterCantCloseItself
	
	| tokens opener openCloser foundOpener |
	opener := MarkdownEmphasisDelimiter new 
		content: '*'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	openCloser := MarkdownEmphasisDelimiter new 
		content: '*'; 
		leftFlanking: true; 
		rightFlanking: true; 
		yourself.
	
	tokens := OrderedCollection new.
	tokens add: opener.
	tokens add: (MarkdownString new content: 'f'; yourself).
	tokens add: openCloser.
	tokens add: (MarkdownString new content: 'b'; yourself).
	inlineParser tokens: tokens.
	
	inlineParser findOpenerFor: openCloser 
		ifFound: [:o | foundOpener := o].
	self deny: (openCloser = foundOpener).
	self assert: opener equals: foundOpener
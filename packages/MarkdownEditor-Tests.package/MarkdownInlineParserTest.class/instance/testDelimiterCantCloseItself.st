tests
testDelimiterCantCloseItself
	
	| tokens opener openCloser foundOpener |
	opener := MarkdownDelimiterEmphasis new content: '*'; leftFlanking: true; rightFlanking: false; yourself.
	openCloser := MarkdownDelimiterEmphasis new content: '*'; leftFlanking: true; rightFlanking: true; yourself.
	tokens := OrderedCollection new.
	tokens add: opener.
	tokens add: (MarkdownString new content: 'f'; yourself).
	tokens add: (MarkdownString new content: 'o'; yourself).
	tokens add: (MarkdownString new content: 'o'; yourself).
	tokens add: openCloser.
	tokens add: (MarkdownString new content: 'b'; yourself).
	inlineParser tokens: tokens.
	
	inlineParser findOpenerFor: openCloser 
		ifFound: [:o | foundOpener := o] 
		ifNone: [self fail].
	self deny: (openCloser = foundOpener).
	self assert: opener equals: foundOpener
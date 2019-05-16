tests
testOpenCloserLength3RuleApplies
	
	| tokens opener closer foundOpener openCloser |
	tokens := OrderedCollection new.
	openCloser := MarkdownDelimiterEmphasis new content: '***'; leftFlanking: true; rightFlanking: true; yourself.
	closer := MarkdownDelimiterEmphasis new content: '******'; leftFlanking: false; rightFlanking: true; yourself.
	tokens := OrderedCollection new.
	tokens add: (MarkdownString new content: 'f'; yourself).
	tokens add: (MarkdownString new content: 'o'; yourself).
	tokens add: (MarkdownString new content: 'o'; yourself).
	tokens add: openCloser.
	tokens add: (MarkdownString new content: 'b'; yourself).
	tokens add: (MarkdownString new content: 'a'; yourself).
	tokens add: (MarkdownString new content: 'r'; yourself).
	tokens add: closer.
	inlineParser tokens: tokens.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:o | foundOpener := o] 
		ifNone: [self fail].
	self assert: openCloser equals: foundOpener.
	
	opener := MarkdownDelimiterEmphasis new content: '****'; leftFlanking: true; rightFlanking: false; yourself.
	closer := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: false; rightFlanking: true; yourself.
	tokens := OrderedCollection new.
	tokens add: opener.
	tokens add: (MarkdownString new content: 'b'; yourself).
	tokens add: (MarkdownString new content: 'a'; yourself).
	tokens add: (MarkdownString new content: 'r'; yourself).
	tokens add: closer.
	inlineParser tokens: tokens.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:o | foundOpener := o] 
		ifNone: [self fail].
	self assert: opener equals: foundOpener
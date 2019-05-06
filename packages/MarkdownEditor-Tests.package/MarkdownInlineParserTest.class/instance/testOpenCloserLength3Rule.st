tests
testOpenCloserLength3Rule
	"https://github.github.com/gfm/#example-421"
	"*foo**bar*"
	
	| tokens opener closer foundOpener openCloser |
	opener := MarkdownDelimiterEmphasis new content: '*'; leftFlanking: true; rightFlanking: false; yourself.
	openCloser := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: true; rightFlanking: true; yourself.
	closer := MarkdownDelimiterEmphasis new content: '*'; leftFlanking: false; rightFlanking: true; yourself.
	tokens := OrderedCollection new.
	tokens add: opener.
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
	self deny: (openCloser = foundOpener).
	self assert: opener equals: foundOpener.
	
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
	self deny: (openCloser = foundOpener).
	self assert: opener equals: foundOpener
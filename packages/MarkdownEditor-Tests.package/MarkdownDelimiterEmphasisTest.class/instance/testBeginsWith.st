tests
testBeginsWith

	self assert: (MarkdownDelimiterEmphasis beginsWith: '*').
	self deny: (MarkdownDelimiterEmphasis beginsWith: '-').
	self deny: (MarkdownDelimiterEmphasis beginsWith: '!').
	self deny: (MarkdownDelimiterEmphasis beginsWith: '![').
	self deny: (MarkdownDelimiterEmphasis beginsWith: '[').
	self deny: (MarkdownDelimiterEmphasis beginsWith: 'f').
	self deny: (MarkdownDelimiterEmphasis beginsWith: '').
	self deny: (MarkdownDelimiterEmphasis beginsWith: ' ').
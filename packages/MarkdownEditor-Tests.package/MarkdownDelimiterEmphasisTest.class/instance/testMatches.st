tests
testMatches

	self assert: (MarkdownDelimiterEmphasis matches: '*').
	self deny: (MarkdownDelimiterEmphasis matches: '-').
	self deny: (MarkdownDelimiterEmphasis matches: '!').
	self deny: (MarkdownDelimiterEmphasis matches: '![').
	self deny: (MarkdownDelimiterEmphasis matches: '[').
	self deny: (MarkdownDelimiterEmphasis matches: 'f').
	self deny: (MarkdownDelimiterEmphasis matches: '').
	self deny: (MarkdownDelimiterEmphasis matches: ' ').
tests - state
testNotLeftFlanking

	| delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	
	self deny: (delimiter isLeftFlankingFor: (self readStreamOn: 'abc***' at: 3)).
	
	self deny: (delimiter isLeftFlankingFor: (self readStreamOn: 'abc *** def' at: 4)).
	
	self deny: (delimiter isLeftFlankingFor: (self readStreamOn: '*** '))
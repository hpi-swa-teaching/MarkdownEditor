tests - state
testNotRightFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	
	stream := self readStreamOn: 'abc *** def' at: 4.
	self deny: (delimiter decideRightFlankingFor: stream).
	
	stream := self readStreamOn: ' ***'.
	self deny: (delimiter decideRightFlankingFor: stream)
	
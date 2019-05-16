tests - state
testLeftFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	
	self assert: (delimiter isLeftFlankingFor: (self readStreamOn: '***abc')).
	
	self assert: (delimiter isLeftFlankingFor: (self readStreamOn: '***"abc')).
	
	stream := self readStreamOn: 'abc***def' at: 3.
	self assert: (delimiter isLeftFlankingFor: stream).

	stream := self readStreamOn: ' ***.' at: 1.
	self assert: (delimiter isLeftFlankingFor: stream).
	
	stream := self readStreamOn: ')***.' at: 1.
	self assert: (delimiter isLeftFlankingFor: stream)
	

	
tests - state
testRightFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	
	stream := self readStreamOn: 'abc***' at: 3.
	self assert: (delimiter isRightFlankingFor: stream).
	
	stream := self readStreamOn: 'abc"***' at: 4.
	self assert: (delimiter isRightFlankingFor: stream).
	
	stream := self readStreamOn: 'abc***def' at: 3.
	self assert: (delimiter isRightFlankingFor: stream).
	
	stream := self readStreamOn: '.*** ' at: 1.
	self assert: (delimiter isRightFlankingFor: stream).
	
	stream := self readStreamOn: '%***)' at: 1.
	self assert: (delimiter isRightFlankingFor: stream)

	
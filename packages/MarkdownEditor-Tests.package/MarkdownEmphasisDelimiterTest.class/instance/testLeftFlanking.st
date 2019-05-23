tests - state
testLeftFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownEmphasisDelimiter new content: '***'; yourself.
	
	self assert: (delimiter decideLeftFlankingFor: (self readStreamOn: '***abc')).
	
	self assert: (delimiter decideLeftFlankingFor: (self readStreamOn: '***"abc')).
	
	stream := self readStreamOn: 'abc***def' at: 3.
	self assert: (delimiter decideLeftFlankingFor: stream).

	stream := self readStreamOn: ' ***.' at: 1.
	self assert: (delimiter decideLeftFlankingFor: stream).
	
	stream := self readStreamOn: ')***.' at: 1.
	self assert: (delimiter decideLeftFlankingFor: stream)
	
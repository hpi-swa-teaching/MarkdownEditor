tests
testRightFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	stream := MarkdownReadStream on: 'abc***'.
	stream next: 3.
	self assert: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: 'abc"***'.
	stream next: 4.
	self assert: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: 'abc***def'.
	stream next: 3.
	self assert: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: 'abc *** def'.
	stream next: 4.
	self deny: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: ' ***'.
	self deny: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: '.*** '.
	stream next.
	self assert: (delimiter isRightFlankingFor: stream).
	stream := MarkdownReadStream on: '%***)'.
	stream next.
	self assert: (delimiter isRightFlankingFor: stream).
	
	

	
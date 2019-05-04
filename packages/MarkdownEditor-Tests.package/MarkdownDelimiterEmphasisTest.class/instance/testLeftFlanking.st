tests
testLeftFlanking

	| stream delimiter |
	"Don't use it that way. Content is set just for testing."
	delimiter := MarkdownDelimiterEmphasis new content: '***'; yourself.
	self assert: (delimiter isLeftFlankingFor: (MarkdownReadStream on: '***abc')).
	self assert: (delimiter isLeftFlankingFor: (MarkdownReadStream on: '***"abc')).
	stream := MarkdownReadStream on: 'abc***def'.
	stream next: 3.
	self assert: (delimiter isLeftFlankingFor: stream).
	stream := MarkdownReadStream on: 'abc***'.
	stream next: 3.
	self deny: (delimiter isLeftFlankingFor: stream).
	stream := MarkdownReadStream on: 'abc *** def'.
	stream next: 4.
	self deny: (delimiter isLeftFlankingFor: stream).
	stream := MarkdownReadStream on: '*** '.
	self deny: (delimiter isLeftFlankingFor: stream).
	stream := MarkdownReadStream on: ' ***.'.
	stream next.
	self assert: (delimiter isLeftFlankingFor: stream).
	stream := MarkdownReadStream on: ')***.'.
	stream next.
	self assert: (delimiter isLeftFlankingFor: stream).
	

	
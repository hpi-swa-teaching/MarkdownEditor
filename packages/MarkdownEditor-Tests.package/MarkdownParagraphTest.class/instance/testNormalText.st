tests
testNormalText

	| text |
	paragaph content: 'Normal train'.
	text := paragaph asText.
	self assert: (text runs values) equals: {{}}
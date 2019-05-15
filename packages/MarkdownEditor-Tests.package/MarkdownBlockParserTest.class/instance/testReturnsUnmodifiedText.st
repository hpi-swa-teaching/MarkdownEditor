tests
testReturnsUnmodifiedText

	self
		assert: 'hallo'
		parsesToRuns: {5}
		values: {{}}

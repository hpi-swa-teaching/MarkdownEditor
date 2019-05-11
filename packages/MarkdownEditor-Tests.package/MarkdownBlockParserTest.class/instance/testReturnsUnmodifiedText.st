tests
testReturnsUnmodifiedText
	
	| string |
	string := 'hallo'.
	self assert: string parsesToRuns: {5} values: {{}}
accessing
assert: markdownString parsesToRuns: runs values: values

	| expectedRuns parsedText|
	expectedRuns := RunArray new setRuns: runs setValues: values.
	parsedText := parser parse: markdownString.
	
	self assert: markdownString equals: parsedText string;
		assert: (values collect: [:attributes | attributes asSet]) equals: (parsedText runs values collect: [:attributes | attributes asSet])
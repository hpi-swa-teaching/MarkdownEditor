tests
testFirstLineWithoutNewline

	| block expectedFirstLine |
	block := MarkdownBlock newFrom: 'Next Station is'.
	expectedFirstLine := 'Next Station is'.
	self assert: expectedFirstLine equals: block firstLine
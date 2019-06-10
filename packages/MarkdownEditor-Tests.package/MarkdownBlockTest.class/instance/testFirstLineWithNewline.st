tests
testFirstLineWithNewline

	| block expectedFirstLine |
	block := MarkdownBlock newFrom: 'Next Station is', Character cr.
	block append: 'HPI Main Station.'.
	expectedFirstLine := 'Next Station is', Character cr.
	self assert: expectedFirstLine equals: block firstLine
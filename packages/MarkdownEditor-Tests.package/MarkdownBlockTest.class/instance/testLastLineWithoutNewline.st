tests
testLastLineWithoutNewline

	| block expectedLastLine |
	block := MarkdownBlock newFrom: 'Next Station is', Character cr.
	block append: 'HPI Main Station.'.
	expectedLastLine := 'HPI Main Station.'.
	self assert: expectedLastLine equals: block lastLine
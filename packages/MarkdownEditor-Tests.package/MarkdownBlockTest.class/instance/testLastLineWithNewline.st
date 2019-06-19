tests
testLastLineWithNewline

	| block expectedLastLine |
	block := MarkdownBlock newFrom: 'Next Station is', Character cr.
	block append: 'HPI Main Station.', Character cr.
	expectedLastLine := 'HPI Main Station.', Character cr.
	self assert: expectedLastLine equals: block lastLine
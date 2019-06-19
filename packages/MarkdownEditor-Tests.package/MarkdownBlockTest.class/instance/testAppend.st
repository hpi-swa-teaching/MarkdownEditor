tests
testAppend

	| block expectedContent |
	block := MarkdownBlock newFrom: 'Next Station is', Character cr.
	block append: 'HPI Main Station.', Character cr.
	expectedContent := 'Next Station is', Character cr, 'HPI Main Station.', Character cr.
	self assert: expectedContent equals: block content
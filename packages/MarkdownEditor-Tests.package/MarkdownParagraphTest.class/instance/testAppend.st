tests
testAppend

	| block expectedContent |
	block := MarkdownBlock newFrom: (MarkdownLine newFrom: 'Next Station:', Character cr).
	block append: (MarkdownLine newFrom: 'HPI Main Station.', Character cr).
	expectedContent := 'Next Station:', Character cr, 'HPI Main Station.', Character cr.
	self assert: expectedContent equals: block content
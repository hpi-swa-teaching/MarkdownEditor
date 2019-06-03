tests
testAppend

	| paragraph expectedContent |
	paragraph := MarkdownParagraph newFrom: 'Next Station is', Character cr.
	paragraph append: 'HPI Main Station.', Character cr.
	expectedContent := 'Next Station is', Character cr, 'HPI Main Station.', Character cr.
	self assert: expectedContent equals: paragraph content
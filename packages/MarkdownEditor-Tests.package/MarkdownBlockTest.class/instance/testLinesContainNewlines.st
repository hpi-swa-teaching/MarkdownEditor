tests
testLinesContainNewlines

	| block expectedLines |
	block := MarkdownBlock newFrom: 'Next Station is', Character cr.
	block append: 'HPI Main Station.', Character cr.
	block append: 'Available changes to Mensa Griebnitzsee.', Character cr.
	expectedLines := {'Next Station is', Character cr.
		'HPI Main Station.', Character cr.
		'Available changes to Mensa Griebnitzsee.', Character cr}.
	self assert: expectedLines equals: block lines
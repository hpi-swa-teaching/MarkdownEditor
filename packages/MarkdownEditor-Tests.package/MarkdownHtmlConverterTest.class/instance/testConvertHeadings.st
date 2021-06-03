tests
testConvertHeadings

	| heading html |
	
	heading := self createBlockFrom: '# H1 Heading'.
	html := htmlConverter convertHeading: heading.
	self assert: ('<h1>H1 Heading</h1>', Character cr = html).
	
	heading := self createBlockFrom: '### H3 Heading'.
	html := htmlConverter convertHeading: heading.
	self assert: ('<h3>H3 Heading</h3>', Character cr = html).
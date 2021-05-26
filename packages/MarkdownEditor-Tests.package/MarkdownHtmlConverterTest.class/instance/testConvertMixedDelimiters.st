tests - inline
testConvertMixedDelimiters

	| paragraph html result |
	
	result := '<p><strong>bold <em>bold & italic</em> bold</strong></p>', Character cr.
	paragraph := self createBlockFrom: '__bold *bold & italic* bold__'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.
	
	paragraph := self createBlockFrom: '**bold _bold & italic_ bold**'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html

	
tests - inline
testConvertBoldParagraph

	| paragraph html result |
	
	result := '<p><strong>test</strong></p>', Character cr.
	paragraph := self createBlockFrom: '**test**'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.
	
	paragraph := self createBlockFrom: '__test__'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: result equals: html
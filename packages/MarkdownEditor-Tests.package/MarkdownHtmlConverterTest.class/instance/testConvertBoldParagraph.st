as yet unclassified
testConvertBoldParagraph

	| paragraph html |
	
	paragraph := self createBlockFrom: '**test**'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: ('<p><strong>test</strong></p>', Character cr = html).
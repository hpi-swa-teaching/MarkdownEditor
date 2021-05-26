tests - inline
testConvertStrikeParagraph

	| paragraph html |
	
	paragraph := self createBlockFrom: '~~test~~'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: ('<p><del>test</del></p>', Character cr = html).
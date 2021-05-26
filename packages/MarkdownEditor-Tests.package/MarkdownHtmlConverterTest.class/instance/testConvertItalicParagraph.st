tests - inline
testConvertItalicParagraph

	| paragraph html result |
	
	result := '<p><em>test</em></p>', Character cr.
	paragraph := self createBlockFrom: '*test*'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.
	
	paragraph := self createBlockFrom: '_test_'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html
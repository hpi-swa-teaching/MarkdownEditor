as yet unclassified
testConvertBasicParagraph

	| paragraph html |
	
	paragraph := self createBlockFrom: 'test'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: ('<p>test</p>', Character cr = html).
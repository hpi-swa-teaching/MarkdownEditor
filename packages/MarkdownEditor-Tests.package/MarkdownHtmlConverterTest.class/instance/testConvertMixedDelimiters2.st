tests - inline
testConvertMixedDelimiters2

	| paragraph html result |
	
	result := '<p>_<em>italic</em><strong>bold</strong></p>', Character cr.
	paragraph := self createBlockFrom: '_*italic*__bold__'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html
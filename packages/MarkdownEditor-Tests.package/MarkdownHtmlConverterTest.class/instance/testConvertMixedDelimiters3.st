tests - inline
testConvertMixedDelimiters3

	| paragraph html result |
	
	result := '<p><em><em>italic</em><strong>bold</strong></em></p>', Character cr.
	paragraph := self createBlockFrom: '_*italic*__bold___'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html
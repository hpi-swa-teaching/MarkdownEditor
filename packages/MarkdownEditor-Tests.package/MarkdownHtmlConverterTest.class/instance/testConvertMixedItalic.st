tests - inline
testConvertMixedItalic

	| paragraph html result |
	
	result := '<p><em><em>double italic</em></em></p>', Character cr.
	paragraph := self createBlockFrom: '_*double italic*_'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.

	
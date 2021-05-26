tests - inline
testConvertMixedDelimitersFailure

	| paragraph html result |
	
	result := '<p>__nothing**</p>', Character cr.
	paragraph := self createBlockFrom: '__nothing**'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.
	
	result := '<p>_<em>agag</em>*</p>', Character cr.
	paragraph := self createBlockFrom: '_*agag**'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.
	
	result := '<p>*<em>italic</em>_</p>', Character cr.
	paragraph := self createBlockFrom: '*_italic__'.
	html := htmlConverter convertParagraph: paragraph.
	self assert: result equals: html.

	
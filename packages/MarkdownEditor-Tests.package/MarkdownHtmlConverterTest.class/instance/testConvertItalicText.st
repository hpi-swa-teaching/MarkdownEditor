new html parser
testConvertItalicText

	| output expectedOutput |
	parser parse: '*hello*'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><em>hello</em></p>'.
	
	self assert: expectedOutput equals: output
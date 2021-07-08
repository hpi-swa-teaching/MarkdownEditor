tests - inline
testConvertItalicText

	| output expectedOutput |
	parser parse: '*hello*'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><em>hello</em></p>'.
	
	self assert: expectedOutput equals: output
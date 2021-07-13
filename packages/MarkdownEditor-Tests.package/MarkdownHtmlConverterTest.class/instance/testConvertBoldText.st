tests - inline
testConvertBoldText

	| output expectedOutput |
	parser parse: '**hello**'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><strong>hello</strong></p>'.
	
	self assert: expectedOutput equals: output
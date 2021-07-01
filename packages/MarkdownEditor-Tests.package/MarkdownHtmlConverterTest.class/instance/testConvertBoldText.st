tests - inline
testConvertBoldText

	| output expectedOutput |
	parser parse: '**hello**'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><strong>hello</strong></p>'.
	
	self assert: expectedOutput equals: output
tests - inline
testConvertImage

	| output expectedOutput |
	parser parse: '![test](test.png)'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><img src="test.png" alt="test" /></p>'.
	
	self assert: expectedOutput equals: output
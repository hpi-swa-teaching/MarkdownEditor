new html parser
testConvertImage2

	| output expectedOutput |
	parser parse: '![*test*](test.png)'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><img src="test.png" alt="test" /></p>'.
	
	self assert: expectedOutput equals: output
new html parser
testConvertAutolink

	| output expectedOutput |
	parser parse: '<https://hpi.de>'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><a href="https://hpi.de">https://hpi.de</a></p>'.
	
	self assert: expectedOutput equals: output
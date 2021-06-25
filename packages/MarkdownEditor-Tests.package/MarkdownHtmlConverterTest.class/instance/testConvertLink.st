new html parser
testConvertLink

	| output expectedOutput |
	parser parse: '[test](https://hpi.de)'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><a href="https://hpi.de">test</a></p>'.
	
	self assert: expectedOutput equals: output
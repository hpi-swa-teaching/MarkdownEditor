new html parser
testConvertATXHeadingLevel4

	| output expectedOutput |
	parser parse: '#### Heading 4'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<h4>Heading 4</h4>'.
	
	self assert: expectedOutput equals: output
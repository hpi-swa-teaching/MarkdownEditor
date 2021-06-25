new html parser
testConvertParagraph

	| output expectedOutput |
	parser parse: 'hello'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p>hello</p>'.
	
	self assert: expectedOutput equals: output
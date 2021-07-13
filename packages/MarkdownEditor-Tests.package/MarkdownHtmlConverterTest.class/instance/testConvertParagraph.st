tests - blocks
testConvertParagraph

	| output expectedOutput |
	parser parse: 'hello'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p>hello</p>'.
	
	self assert: expectedOutput equals: output
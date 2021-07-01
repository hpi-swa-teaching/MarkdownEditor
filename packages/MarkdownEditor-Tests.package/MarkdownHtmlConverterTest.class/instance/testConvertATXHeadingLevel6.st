tests - blocks
testConvertATXHeadingLevel6

	| output expectedOutput |
	parser parse: '###### Heading 6'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<h6>Heading 6</h6>'.
	
	self assert: expectedOutput equals: output
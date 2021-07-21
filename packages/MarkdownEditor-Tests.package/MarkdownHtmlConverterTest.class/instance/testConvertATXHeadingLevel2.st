tests - blocks
testConvertATXHeadingLevel2

	| output expectedOutput |
	parser parse: '## Heading 2'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<h2>Heading 2</h2>'.
	
	self assert: expectedOutput equals: output
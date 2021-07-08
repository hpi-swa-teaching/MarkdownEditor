tests - blocks
testConvertATXHeadingLevel5

	| output expectedOutput |
	parser parse: '##### Heading 5'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<h5>Heading 5</h5>'.
	
	self assert: expectedOutput equals: output
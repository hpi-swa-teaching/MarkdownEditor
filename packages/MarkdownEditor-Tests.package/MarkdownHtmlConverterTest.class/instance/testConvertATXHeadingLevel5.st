new html parser
testConvertATXHeadingLevel5

	| output expectedOutput |
	parser parse: '##### Heading 5'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<h5>Heading 5</h5>'.
	
	self assert: expectedOutput equals: output
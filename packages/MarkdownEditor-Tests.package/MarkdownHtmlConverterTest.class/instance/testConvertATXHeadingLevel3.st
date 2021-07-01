tests - blocks
testConvertATXHeadingLevel3

	| output expectedOutput |
	parser parse: '### Heading 3'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<h3>Heading 3</h3>'.
	
	self assert: expectedOutput equals: output
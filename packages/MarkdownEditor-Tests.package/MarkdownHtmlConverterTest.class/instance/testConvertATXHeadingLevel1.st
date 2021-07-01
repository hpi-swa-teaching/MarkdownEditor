tests - blocks
testConvertATXHeadingLevel1

	| output expectedOutput |
	parser parse: '# Heading 1'.
	output :=  (htmlConverter convertToHtml: parser document).	
	expectedOutput := self fullHtmlDocumentFrom: '<h1>Heading 1</h1>'.
	
	self assert: expectedOutput equals: output
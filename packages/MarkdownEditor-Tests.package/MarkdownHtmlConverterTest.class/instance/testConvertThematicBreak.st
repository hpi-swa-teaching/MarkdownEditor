tests - blocks
testConvertThematicBreak

	| output expectedOutput |
	parser parse: '***'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<hr />'.
	
	self assert: expectedOutput equals: output
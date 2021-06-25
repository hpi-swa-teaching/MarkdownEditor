new html parser
testConvertThematicBreak

	| output expectedOutput |
	parser parse: '***'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<hr />'.
	
	self assert: expectedOutput equals: output
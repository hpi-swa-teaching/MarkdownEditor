tests - complex
testConvertExampleDocument

	| output expectedOutput |
	parser parse: self exampleDocument.
	output :=  (htmlConverter convertToHtml: parsingState document).	
	expectedOutput := self fullHtmlDocumentFrom: self exampleHtml.
	
	self assert: expectedOutput equals: output
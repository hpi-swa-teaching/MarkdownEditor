tests - complex
testConvertExampleDocument2

	| output expectedOutput |
	parser parse: self exampleDocument2.
	output :=  (htmlConverter convertToHtml: parsingState document).	
	expectedOutput := self fullHtmlDocumentFrom: self exampleHtml2.
	
	self assert: expectedOutput equals: output
new html parser
testConvertExampleDocument

	| output expectedOutput |
	parser parse: self exampleDocument.
	output :=  (htmlConverter convertToHtml: parser document).	
	expectedOutput := self fullHtmlDocumentFrom: self exampleHtml.
	
	self assert: expectedOutput equals: output
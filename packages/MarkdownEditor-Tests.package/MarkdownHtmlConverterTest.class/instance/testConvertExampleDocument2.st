new html parser
testConvertExampleDocument2

	| output expectedOutput |
	parser parse: self exampleDocument2.
	output :=  (htmlConverter convertToHtml: parser document).	
	expectedOutput := self fullHtmlDocumentFrom: self exampleHtml2.
	
	self assert: expectedOutput equals: output
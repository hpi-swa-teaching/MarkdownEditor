tests - inline
testConvertInlineCode

	| output expectedOutput |
	parser parse: '`code`'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><code>code</code></p>'.
	
	self assert: expectedOutput equals: output
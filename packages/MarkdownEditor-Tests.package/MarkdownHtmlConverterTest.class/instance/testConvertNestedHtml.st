tests - complex
testConvertNestedHtml

	| output expectedOutput |
	parser parse: '_If you want to learn more [click here](www.example.com)_'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := 
		self fullHtmlDocumentFrom: '<p><em>If you want to learn more <a href="www.example.com">click here</a></em></p>'.
	
	self assert: expectedOutput equals: output
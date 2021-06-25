new html parser
testConvertStrikeText

	| output expectedOutput |
	parser parse: '~~hello~~'.
	output :=  (htmlConverter convertToHtml: parser document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><del>hello</del></p>'.
	
	self assert: expectedOutput equals: output
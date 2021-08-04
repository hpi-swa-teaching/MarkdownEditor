tests - inline
testConvertStrikeText

	| output expectedOutput |
	parser parse: '~~hello~~'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><del>hello</del></p>'.
	
	self assert: expectedOutput equals: output
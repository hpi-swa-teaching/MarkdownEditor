tests - inline
testConvertAutolinkWithMail

	| output expectedOutput |
	parser parse: '<squeak@hpi.de>'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><a href="mailto:squeak@hpi.de">squeak@hpi.de</a></p>'.
	
	self assert: expectedOutput equals: output

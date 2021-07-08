tests - inline
testConvertLinkWithAutoLink

	| output expectedOutput |
	parser parse: '[<squeak@hpi.de>](hpi.de)'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self 
		fullHtmlDocumentFrom: '<p><a href="hpi.de"><a href="mailto:squeak@hpi.de">squeak@hpi.de</a></a></p>'.
	
	self assert: expectedOutput equals: output
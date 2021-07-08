tests - blocks
testConvertParagraphComplex

	| output expectedOutput |
	parser parse: 'nothing *italic* **bold** **bold*bold-and-italic***', Character cr.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := 
		self fullHtmlDocumentFrom: '<p>nothing <em>italic</em> <strong>bold</strong> <strong>bold<em>bold-and-italic</em></strong></p>'.
	
	self assert: expectedOutput equals: output.
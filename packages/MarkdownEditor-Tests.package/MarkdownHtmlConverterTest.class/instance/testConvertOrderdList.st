tests - blocks
testConvertOrderdList

	| output expectedOutput listHtml |
	parser parse: '1. ListItem 1', Character cr, '2. ListItem 2', Character cr,'3. ListItem 3'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ol>
<li>ListItem 1</li>
<li>ListItem 2</li>
<li>ListItem 3</li>
</ol>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
tests - blocks
testConvertOrderdList

	| output expectedOutput listHtml |
	parser parse: '1. ListItem 1', Character cr, '2. ListItem 2', Character cr,'3. ListItem 3'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ol start="1">
<li><p>ListItem 1</p>
</li>
<li><p>ListItem 2</p>
</li>
<li><p>ListItem 3</p>
</li>
</ol>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
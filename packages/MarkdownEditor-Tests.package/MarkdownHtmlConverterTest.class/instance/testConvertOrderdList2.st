tests - blocks
testConvertOrderdList2

	| output expectedOutput listHtml |
	parser parse: '5. ListItem 1', Character cr, '5. ListItem 2'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ol start="5">
<li><p>ListItem 1</p>
</li>
<li><p>ListItem 2</p>
</li>
</ol>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
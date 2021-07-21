tests - blocks
testConvertUnorderdList

	| output expectedOutput listHtml |
	parser parse: '* ListItem 1', Character cr, '* ListItem 2', Character cr,'* ListItem 3'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ul>
<li>ListItem 1</li>
<li>ListItem 2</li>
<li>ListItem 3</li>
</ul>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
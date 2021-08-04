tests - blocks
testConvertUnorderdList

	| output expectedOutput listHtml |
	parser parse: '* ListItem 1', Character cr, '* ListItem 2', Character cr,'* ListItem 3'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ul>
<li><p>ListItem 1</p>
</li>
<li><p>ListItem 2</p>
</li>
<li><p>ListItem 3</p>
</li>
</ul>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
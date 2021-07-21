tests - blocks
testConvertUnorderdListsNested

	| output expectedOutput listHtml |
	parser 
		parse: '* Level 1
* Level 1
	- Level 2
	- Level 2
		- Level 3
	- Level 2
	- Level 2
* Level 1'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ul>
<li>Level 1</li>
<li>Level 1
<ul>
<li>Level 2</li>
<li>Level 2
<ul>
<li>Level 3</li>
</ul>
</li>
<li>Level 2</li>
<li>Level 2</li>
</ul>
</li>
<li>Level 1</li>
</ul>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
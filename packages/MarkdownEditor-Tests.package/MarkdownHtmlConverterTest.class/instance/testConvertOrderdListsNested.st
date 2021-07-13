tests - blocks
testConvertOrderdListsNested

	| output expectedOutput listHtml |
	parser 
		parse: '1. Level 1
2. Level 1
	1. Level 2
	2. Level 2
		1. Level 3
	3. Level 2
	5. Level 2
3. Level 1'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ol>
<li>Level 1</li>
<li>Level 1
<ol>
<li>Level 2</li>
<li>Level 2
<ol>
<li>Level 3</li>
</ol>
</li>
<li>Level 2</li>
<li>Level 2</li>
</ol>
</li>
<li>Level 1</li>
</ol>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
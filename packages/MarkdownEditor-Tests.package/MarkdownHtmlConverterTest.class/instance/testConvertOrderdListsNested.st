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
    4. Level 2
3. Level 1'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	listHtml := '<ol>
<li><p>Level 1</p>
</li>
<li><p>Level 1</p>
<ol>
<li><p>Level 2</p>
</li>
<li><p>Level 2</p>
<ol>
<li><p>Level 3</p>
</li>
</ol>
</li>
<li><p>Level 2</p>
</li>
<li><p>Level 2</p>
</li>
</ol>
</li>
<li><p>Level 1</p>
</li>
</ol>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
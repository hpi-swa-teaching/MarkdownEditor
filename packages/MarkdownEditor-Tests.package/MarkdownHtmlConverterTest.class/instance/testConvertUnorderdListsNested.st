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
<li><p>Level 1</p>
</li>
<li><p>Level 1</p>
<ul>
<li><p>Level 2</p>
</li>
<li><p>Level 2</p>
<ul>
<li><p>Level 3</p>
</li>
</ul>
</li>
<li><p>Level 2</p>
</li>
<li><p>Level 2</p>
</li>
</ul>
</li>
<li><p>Level 1</p>
</li>
</ul>'.
	expectedOutput := self fullHtmlDocumentFrom: listHtml.
	
	self assert: expectedOutput equals: output
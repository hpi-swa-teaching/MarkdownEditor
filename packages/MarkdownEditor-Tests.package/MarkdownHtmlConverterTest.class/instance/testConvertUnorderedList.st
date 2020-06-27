as yet unclassified
testConvertUnorderedList

	| block html expectedHtml |
	
	block :=self createBlockFrom: '- Level 1'.
	block append: (MarkdownLine newFrom: '- Level1').
	block append: (MarkdownLine newFrom: '	- Level 2').
	block append: (MarkdownLine newFrom: '	- Level 2').
	block append: (MarkdownLine newFrom: '		- Level 3').
	block append: (MarkdownLine newFrom: '	- Level 2').
		block append: (MarkdownLine newFrom: '	- Level 2').
		block append: (MarkdownLine newFrom: '- Level 1').
	
	html := htmlConverter convertUnorderedList: block.
	expectedHtml := '<ul>
<li>Level 1</li>
<li>Level1</li>
<ul>
<li>Level 2</li>
<li>Level 2</li>
<ul>
<li>Level 3</li>
</ul>
<li>Level 2</li>
<li>Level 2</li>
</ul>
<li>Level 1</li>
</ul>
'.

	self assert: (expectedHtml = html).
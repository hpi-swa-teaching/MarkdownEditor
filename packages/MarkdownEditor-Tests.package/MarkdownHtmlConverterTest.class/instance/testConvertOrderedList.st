tests - blocks
testConvertOrderedList
	"not implemented yet"

	| block html |
	
	block :=self createBlockFrom: '1. Level 1'.
	block append: (MarkdownLine newFrom: '2. Level 1').
	block append: (MarkdownLine newFrom: '	1. Level 2').
	block append: (MarkdownLine newFrom: '	2. Level 2').
	block append: (MarkdownLine newFrom: '		2. Level 3').
	block append: (MarkdownLine newFrom: '	3.. Level 2').
		block append: (MarkdownLine newFrom: '	5. Level 2').
		block append: (MarkdownLine newFrom: '3. Level 1').
	
	html := htmlConverter convertOrderedList: block.

	self assert: (
'<ol>
<li>Level 1</li>
<li>Level 1</li>
<ol>
<li>Level 2</li>
<li>Level 2</li>
<ol>
<li>Level 3</li>
</ol>
<li>Level 2</li>
<li>Level 2</li>
</ol>
<li>Level 1</li>
</ol>
' = html).
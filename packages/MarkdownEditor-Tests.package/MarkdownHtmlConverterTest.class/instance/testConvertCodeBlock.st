tests
testConvertCodeBlock

	| codeBlock html |
	
	codeBlock :=self createBlockFrom: '```'.
 	codeBlock append: (MarkdownLine newFrom: 'Some Code').
 	codeBlock append: (MarkdownLine newFrom: '```').
	html := htmlConverter convertCodeBlock: codeBlock.
	
	self assert: (
'<code>
	Some Code
</code>
'= html).
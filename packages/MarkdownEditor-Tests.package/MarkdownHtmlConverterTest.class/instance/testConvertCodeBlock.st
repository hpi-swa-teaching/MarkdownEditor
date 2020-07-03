as yet unclassified
testConvertCodeBlock

	| codeBlock html |
	
	codeBlock :=self createBlockFrom: '```'.
 	codeBlock append: (MarkdownLine newFrom: 'Some Code').
 	codeBlock append: (MarkdownLine newFrom: '```').
	html := htmlConverter convertCodeBlock: codeBlock.
	
	self assert: (('<code>', Character cr,'Some Code</code>', Character cr) = html).
tests - blocks
testConvertFencedCodeBlock

	| output expectedOutput |
	parser parse: '```', Character cr, 'some code', Character cr,'```'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<pre><code>some code
</code></pre>'.
	
	self assert: expectedOutput equals: output
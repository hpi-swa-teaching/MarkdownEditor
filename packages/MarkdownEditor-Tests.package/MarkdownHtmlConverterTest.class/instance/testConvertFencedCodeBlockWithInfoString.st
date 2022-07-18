tests - blocks
testConvertFencedCodeBlockWithInfoString

	| output expectedOutput |
	parser parse: '``` smalltalk', Character cr, 'some code', Character cr,'```'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<pre><code class="language-smalltalk">some code
</code></pre>'.
	
	self assert: expectedOutput equals: output
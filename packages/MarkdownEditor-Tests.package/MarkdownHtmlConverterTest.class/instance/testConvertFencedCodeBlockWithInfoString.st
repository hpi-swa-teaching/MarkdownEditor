tests - blocks
testConvertFencedCodeBlockWithInfoString

	| output expectedOutput |
	parser parse: '``` squeak', Character cr, 'some code', Character cr,'```'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<pre><code class="language-squeak">some code
</code></pre>'.
	
	self assert: expectedOutput equals: output
tests - blocks
testConvertFencedCodeBlockWithInfoString3

	| output expectedOutput |
	parser parse: '```smalltalk

method: aNumber
    |a|
    a := 5.
    ^ a
```'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<pre><code class="language-smalltalk">
method: aNumber
    |a|
    a := 5.
    ^ a
</code></pre>'.
	
	self assert: expectedOutput equals: output
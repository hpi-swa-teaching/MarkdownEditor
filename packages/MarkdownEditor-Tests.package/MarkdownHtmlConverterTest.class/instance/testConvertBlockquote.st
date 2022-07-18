tests - blocks
testConvertBlockquote

	| output blockquoteHtml expectedOutput |
	parser parse: '> hello', Character cr, '> this is a', Character cr,'> blockquote test'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	blockquoteHtml :=
'<blockquote>
<p>hello
this is a
blockquote test</p>
</blockquote>'.
	expectedOutput := self fullHtmlDocumentFrom: blockquoteHtml.
	
	self assert: expectedOutput equals: output

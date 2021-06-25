new html parser
testConvertBlockquote

	| output blockquoteHtml expectedOutput |
	parser parse: '> hello', Character cr, '> this is a', Character cr,'> blockquote test'.
	output :=  (htmlConverter convertToHtml: parser document).
	blockquoteHtml :=
'<blockquote>
<p>hello
this is a
blockquote test</p>'.
	expectedOutput := self fullHtmlDocumentFrom: blockquoteHtml.
	
	self assert: expectedOutput equals: output

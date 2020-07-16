tests
testConvertItalicParagraph

	| paragraph html |
	
	paragraph := self createBlockFrom: '*test*'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: (
'<p>
	<em>test</em>
</p>
' = html).
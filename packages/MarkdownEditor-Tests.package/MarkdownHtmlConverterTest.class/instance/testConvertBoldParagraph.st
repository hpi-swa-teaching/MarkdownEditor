tests
testConvertBoldParagraph

	| paragraph html |
	
	paragraph := self createBlockFrom: '**test**'.
	html := htmlConverter convertParagraph: paragraph.
	
	self assert: (
'<p>
	<strong>test</strong>
</p>
' = html).
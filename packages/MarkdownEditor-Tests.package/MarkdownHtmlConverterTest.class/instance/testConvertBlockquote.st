tests
testConvertBlockquote

	| blockquote html |
	
	blockquote :=self createBlockFrom: '> Alea Iacta Est'.
	html := htmlConverter convertBlockquote: blockquote.
	
	self assert: (
'<blockquote>
	 Alea Iacta Est
</blockquote>
' = html).
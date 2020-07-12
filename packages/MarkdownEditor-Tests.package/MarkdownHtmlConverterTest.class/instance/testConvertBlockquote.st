tests
testConvertBlockquote

	| blockquote html |
	
	blockquote :=self createBlockFrom: '> Alea Iacta Est'.
	html := htmlConverter convertBlockquote: blockquote.
	
	self assert: (('<blockquote>', Character cr, ' Alea Iacta Est</blockquote>', Character cr) = html).
need to be implemented
testConvertCommentBlock

	| comment html |
	
	comment := self createBlockFrom: '<!-- comment -->'.
	html := htmlConverter convertCommentBlock: comment.
	
	self assert: ('<!-- comment -->' = html).
as yet unclassified
testConvertCommentBlcok

	| comment html |
	
	comment := self createBlockFrom: '<!-- comment -->'.
	html := htmlConverter convertCommentBlock: comment.
	
	self assert: ('<!-- comment -->' = html).
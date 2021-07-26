tests - hash
testDelimiterHash2

	| del expectedHash |
	del := MarkdownDelimiter newFromPadded: ' **t'.
	expectedHash := true hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: false hash))))).
	self assert: expectedHash equals: del hash
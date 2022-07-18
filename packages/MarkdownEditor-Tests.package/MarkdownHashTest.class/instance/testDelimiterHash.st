tests - hash
testDelimiterHash

	| del expectedHash |
	del := MarkdownDelimiter newFromPadded: 't**t'.
	expectedHash := true hash 
		bitXor: (true hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
		
	self assert: expectedHash equals: del hash
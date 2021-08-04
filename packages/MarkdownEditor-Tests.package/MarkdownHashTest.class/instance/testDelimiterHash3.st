tests - hash
testDelimiterHash3

	| del expectedHash |
	del := MarkdownDelimiter newFromPadded: 't** '.
	expectedHash := false hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
		
	self assert: expectedHash equals: del hash
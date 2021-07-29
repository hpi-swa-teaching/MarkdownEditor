tests - hash
testDelimiterHash4

	| del expectedHash |
	del := MarkdownDelimiter newFromPadded: ' __t'.
	expectedHash := true hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($_ hash 
		bitXor: (nil hash 
		bitXor: false hash))))).
		
	self assert: expectedHash equals: del hash
tests - hash
testDelimiterHash5

	| del expectedHash |
	del := MarkdownDelimiter newFromPadded: 't__ '.
	expectedHash := false hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($_ hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
		
	self assert: expectedHash equals: del hash
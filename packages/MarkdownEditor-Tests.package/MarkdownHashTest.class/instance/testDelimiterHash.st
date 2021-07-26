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
	self assert: expectedHash equals: del hash.
	
	del := MarkdownDelimiter newFromPadded: ' **t'.
	expectedHash := true hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: false hash))))).
	self assert: expectedHash equals: del hash.
	
	del := MarkdownDelimiter newFromPadded: 't** '.
	expectedHash := false hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
	self assert: expectedHash equals: del hash.
	
	del := MarkdownDelimiter newFromPadded: ' __t'.
	expectedHash := true hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($_ hash 
		bitXor: (nil hash 
		bitXor: false hash))))).
	self assert: expectedHash equals: del hash.
	
	del := MarkdownDelimiter newFromPadded: 't__ '.
	expectedHash := false hash 
		bitXor: (false hash 
		bitXor: (2 hash 
		bitXor: (true hash 
		bitXor: ($_ hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
	self assert: expectedHash equals: del hash.
	
	del := MarkdownDelimiter newFromPadded: 't******t'.
	expectedHash := true hash 
		bitXor: (true hash 
		bitXor: (6 hash 
		bitXor: (true hash 
		bitXor: ($* hash 
		bitXor: (nil hash 
		bitXor: true hash))))).
	self assert: expectedHash equals: del hash.
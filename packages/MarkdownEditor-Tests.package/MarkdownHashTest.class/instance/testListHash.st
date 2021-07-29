tests - hash
testListHash

	| hash expectedHash |
	hash := (MarkdownList new) hash.
	expectedHash := nil hash bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: (true hash
		bitXor: (OrderedCollection new hash 
		bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: nil hash)))))))).
	
	self assert: expectedHash equals: hash
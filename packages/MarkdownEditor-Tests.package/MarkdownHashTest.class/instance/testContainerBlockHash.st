tests - hash
testContainerBlockHash

	| hash expectedHash |
	hash := (MarkdownContainerBlock new) hash.
	expectedHash := nil hash bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: (nil hash 
		bitXor: (true hash 
		bitXor: OrderedCollection new hash)))).
	
	self assert: expectedHash equals: hash
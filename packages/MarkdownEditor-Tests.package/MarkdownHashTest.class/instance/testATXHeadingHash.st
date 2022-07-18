tests - hash
testATXHeadingHash

	| hash expectedHash |
	hash := (MarkdownATXHeading new) hash.
	expectedHash := nil hash bitXor: (0 hash 
		bitXor: (nil hash
		bitXor: (nil hash
		bitXor: (true hash
		bitXor: ('' hash
		bitXor: (MarkdownLinkedList new hash
		bitXor: nil hash)))))).
	
	self assert: expectedHash equals: hash
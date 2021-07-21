tests - hash
testReferenceHash

	| hash expectedHash |
	hash := (MarkdownReference new) hash.
	expectedHash := '' hash bitXor: (MarkdownLinkedList new) hash.
	
	self assert: expectedHash equals: hash
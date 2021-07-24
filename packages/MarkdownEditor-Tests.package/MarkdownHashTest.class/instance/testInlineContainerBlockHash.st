tests - hash
testInlineContainerBlockHash

	| hash expectedHash |
	hash := (MarkdownInlineContainerBlock new) hash.
	expectedHash := nil hash bitXor: (MarkdownLinkedList new) hash.
	
	self assert: expectedHash equals: hash
tests - hash
testInlineContainerBlockHash

	| hash expectedHash |
	hash := (MarkdownInlineContainerBlock new) hash.
	expectedHash := (MarkdownLinkedList new) hash.
	
	self assert: expectedHash equals: hash
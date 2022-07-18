tests - hash
testReferenceHash

	| hash expectedHash |
	hash := (MarkdownReference newFrom: 'hpi.de') hash.
	expectedHash := nil hash bitXor: ('hpi.de' hash bitXor: (MarkdownLinkedList new hash)).
	
	self assert: expectedHash equals: hash
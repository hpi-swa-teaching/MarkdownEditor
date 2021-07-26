tests - hash
testLeafBlockHash

	| hash expectedHash |
	hash := (MarkdownLeafBlock new) hash.
	expectedHash := nil hash 
						bitXor: (nil hash 
							bitXor: (true hash 
								bitXor: (0 hash 
									bitXor: (nil hash 
										bitXor: (MarkdownLinkedList new hash 
											bitXor: '' hash))))).
	
	self assert: expectedHash equals: hash
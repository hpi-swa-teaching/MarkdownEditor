tests - hash
testAutolinkHash

	| hash expectedHash |
	hash := (MarkdownAutolink newWith: #beNotEmail and: 'https://www.hpi.de') hash.
	expectedHash := nil hash bitXor: (false hash bitXor: 'https://www.hpi.de' hash). "768"
	
	self assert: expectedHash equals: hash
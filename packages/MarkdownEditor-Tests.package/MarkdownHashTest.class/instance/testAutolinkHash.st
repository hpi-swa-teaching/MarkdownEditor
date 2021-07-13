tests - hash
testAutolinkHash

	| hash expectedHash |
	hash := (MarkdownAutolink new) hash.
	expectedHash := false hash bitXor: nil hash. "768"
	
	self assert: expectedHash equals: hash
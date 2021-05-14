tests
testCloseMarkdownOptions

	| options |
	
	options := MarkdownSettings UniqueInstance.
	options openInWorld.
	self assert: (World submorphs includes: options).
	options closeMarkdownOptions.
	self deny: (World submorphs includes: options).
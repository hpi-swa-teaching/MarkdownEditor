tests
testCloseMarkdownOptions

	| options |
	
	MarkdownSettings open.
	options := MarkdownSettings UniqueInstance window.
	self assert: (World submorphs includes: options).
	MarkdownSettings UniqueInstance closeMarkdownOptions.
	self deny: (World submorphs includes: options).
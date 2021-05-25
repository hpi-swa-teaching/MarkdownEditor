tests
testCloseMarkdownOptions

	| options |
	
	MarkdownSettings open.
	options := MarkdownSettings UniqueInstance window.
	World submorphs do: [:e | Transcript show: e;cr].
	self assert: (World submorphs includes: options).
	MarkdownSettings UniqueInstance closeMarkdownOptions.
	self deny: (World submorphs includes: options).
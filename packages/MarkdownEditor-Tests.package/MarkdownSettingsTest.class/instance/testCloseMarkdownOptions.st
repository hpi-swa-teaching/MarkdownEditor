tests
testCloseMarkdownOptions

	| options |
	
	options := MarkdownSettings new
		currentStyleSettings: MarkdownStyleSettings default;
		onChange: [].
	options openInWorld.
	self assert: (World submorphs includes: options).
	options closeMarkdownOptions.
	self deny: (World submorphs includes: options).
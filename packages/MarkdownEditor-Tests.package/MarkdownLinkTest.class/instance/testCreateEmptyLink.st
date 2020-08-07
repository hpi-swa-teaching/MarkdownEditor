tests
testCreateEmptyLink

	| link |
	link := MarkdownLink from: 1 to: 2.
	self assert: (TextEmphasis underlined = link textAttribute).
	self assert: (TextColor blue = link colorAttribute).
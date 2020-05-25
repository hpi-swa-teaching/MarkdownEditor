tests
testCreateUnemptyLink

	| link |
	link := MarkdownLink from: 1 to: 3.
	self assert: TextEmphasis underlined equals: link textAttribute.
	self assert: TextColor blue equals: link colorAttribute
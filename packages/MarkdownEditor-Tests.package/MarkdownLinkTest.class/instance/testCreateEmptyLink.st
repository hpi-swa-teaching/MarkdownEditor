tests
testCreateEmptyLink

	| link |
	link := MarkdownLink from: 1 to: 2.
	self deny: TextEmphasis underlined equals: link textAttribute.
	self deny: TextColor blue equals: link colorAttribute.
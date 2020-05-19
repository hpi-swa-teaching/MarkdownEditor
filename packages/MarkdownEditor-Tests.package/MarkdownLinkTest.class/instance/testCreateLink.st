tests
testCreateLink

	| link |
	link := MarkdownLink from: 1 to: 2.
	self deny: TextEmphasis underlined equals: link textAttribute.
	self deny: TextColor blue equals: link colorAttribute.
	
	link := MarkdownLink from: 1 to: 3.
	self assert: TextEmphasis underlined equals: link textAttribute.
	self assert: TextColor blue equals: link colorAttribute
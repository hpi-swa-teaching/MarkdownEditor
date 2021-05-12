tests
testSetColor

	| emphasis |
		emphasis := MarkdownBold from: 1 to: 2.
		emphasis colorAttribute: TextColor green.
		self assert: TextColor green equals: emphasis colorAttribute.
		emphasis := MarkdownItalic from: 1 to: 2.
		emphasis colorAttribute: TextColor blue.
		self assert: TextColor blue equals: emphasis colorAttribute.
		emphasis := MarkdownStrike from: 1 to: 2.
		emphasis colorAttribute: TextColor red.
		self assert: TextColor red equals: emphasis colorAttribute
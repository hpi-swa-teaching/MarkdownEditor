tests
testSetColor

	| emphasis |
		emphasis := MarkdownEmphasis strongFrom: 1 to: 2.
		emphasis colorAttribute: TextColor green.
		self assert: TextColor green equals: emphasis colorAttribute.
		emphasis := MarkdownEmphasis from: 1 to: 2.
		emphasis colorAttribute: TextColor blue.
		self assert: TextColor blue equals: emphasis colorAttribute
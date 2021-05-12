tests
testColorIsBlack

	| emphasis |
		emphasis := MarkdownBold from: 1 to: 2.
		self assert: TextColor black equals: emphasis colorAttribute.
		emphasis := MarkdownItalic from: 1 to: 2.
		self assert: TextColor black equals: emphasis colorAttribute.
		emphasis := MarkdownStrike from: 1 to: 2.
		self assert: TextColor black equals: emphasis colorAttribute  
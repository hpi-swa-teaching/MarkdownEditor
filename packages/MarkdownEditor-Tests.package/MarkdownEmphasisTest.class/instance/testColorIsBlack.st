tests
testColorIsBlack

	| emphasis |
		emphasis := MarkdownEmphasis strongFrom: 1 to: 2.
		self assert: TextColor black equals: emphasis colorAttribute.
		emphasis := MarkdownEmphasis from: 1 to: 2.
		self assert: TextColor black equals: emphasis colorAttribute  
tests
testInstanceCreation

	| attribute |
	attribute := MarkdownAttribute from: 1 to: 21.
	self assert: 1 equals: attribute start.
	self assert: 21 equals: attribute end
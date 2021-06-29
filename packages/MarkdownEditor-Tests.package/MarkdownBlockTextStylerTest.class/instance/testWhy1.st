as yet unclassified
testWhy1

	| parser |
	parser := MarkdownParser new parse: '>'.
	self assert: true equals: false
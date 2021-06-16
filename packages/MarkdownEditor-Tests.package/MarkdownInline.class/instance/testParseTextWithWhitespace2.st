tests - emphasis
testParseTextWithWhitespace2

	| expectedOutput output |
	output := parser parse: '* Hello World *'.
	"hier muss man irgendwie ein Leerzeichen anhängen?"
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '* Hello World * '.}.
	self assert: expectedOutput equals: output
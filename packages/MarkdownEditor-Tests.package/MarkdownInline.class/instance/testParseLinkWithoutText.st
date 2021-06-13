tests - links
testParseLinkWithoutText
	
	| expectedOutput link output |
	output := parser parse: '[](hpi.de)'.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	"link children add: (MarkdownString2 newFrom: '')."
	expectedOutput := LinkedList newFrom: {link}.
	self assert: expectedOutput equals: output
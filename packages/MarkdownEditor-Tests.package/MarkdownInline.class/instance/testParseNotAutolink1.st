tests - autolinks
testParseNotAutolink1
	
	| output expectedOutput |
	output := parser parse: '<www.hpi.de>'.
	
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: ('<www.hpi.de>')}.
	
	self assert: expectedOutput equals: output
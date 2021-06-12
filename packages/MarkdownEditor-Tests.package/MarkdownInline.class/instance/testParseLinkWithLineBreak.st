tests - links
testParseLinkWithLineBreak
	
	| expectedOutput output |
	output := parser parse: ('[](hpi',Character cr,'.de)').
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '[](hpi',String cr,'.de)'}.
	self assert: expectedOutput equals: output
tests - links
testParseLinkWithLineBreak
	
	| expectedOutput output |
	output := parser parseInline: ('[](hpi',Character cr,'.de)').
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '[](hpi',String cr,'.de)'}.
	
	self assert: expectedOutput equals: output
tests - inline code
testInlineCodeWithEmphasis2

	| expectedOutput output |
	output := parser parseInline: '*test`*`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: 'te*s*t'}.
	
	self assert: expectedOutput equals: output
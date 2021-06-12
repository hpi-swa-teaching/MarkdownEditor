tests - emphasis
testParseTextNotEmphasised

	| expectedOutput output |
	output := parser parse: '*this should not be**emphasisedl'.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*this should not be**emphasisedl'}.
	self assert: expectedOutput equals: output
	
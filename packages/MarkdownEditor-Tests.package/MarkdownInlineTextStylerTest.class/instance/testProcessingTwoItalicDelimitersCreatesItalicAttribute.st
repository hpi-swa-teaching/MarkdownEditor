tests - interpretation
testProcessingTwoItalicDelimitersCreatesItalicAttribute

	| expectedEmphases |
	inlineTextStyler
		tokenize: '*a*';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	expectedEmphases := {MarkdownEmphasis from: 1 to: 3}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes
tests - interpretation
testProcessingTwoItalicDelimitersCreatesBoldAttribute

	| expectedEmphases |
	inlineTextStyler
		tokenize: '**a**';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	expectedEmphases := {MarkdownEmphasis strongFrom: 1 to: 5}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes
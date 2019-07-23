tests - interpretation
testInterpretTokensBold

	| expectedEmphases |
	inlineTextStyler 
		tokenize: '**foo**';
		interpretTokens.

	expectedEmphases := {MarkdownEmphasis strongFrom: 1 to: 7}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes
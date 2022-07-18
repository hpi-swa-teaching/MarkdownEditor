tests - lineAdding
testInvalidClosingFence

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indentation: 0;
		yourself.
	testList := {{'test'. #matched. true}.
				{'```'. #matched. true}.
				{'~~~'. #matched. true}.
				{'``` ``'. #matched. true}.
				{'``` squeak'. #matched. true}.
				{'    ````'. #matched. true}.
				{'````'. #endOfLine. false}}.
	self testList: testList onBlock: testBlock
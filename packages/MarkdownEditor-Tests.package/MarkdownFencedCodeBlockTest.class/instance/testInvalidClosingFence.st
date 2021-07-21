tests - lineAdding
testInvalidClosingFence

	| testList testBlock cr |
	cr := Character cr.
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indention: 0;
		yourself.
	testList := {{'test'. 0. true}.
				{'```'. 0. true}.
				{'~~~'. 0. true}.
				{'``` ``'. 0. true}.
				{'``` squeak'. 0. true}.
				{'    ````'. 0. true}.
				{'````'. 2. false}}.
	self testList: testList onBlock: testBlock.
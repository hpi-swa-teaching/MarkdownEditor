tests - lineAdding
testRemovingIndention

	| testList testBlock cr |
	cr := Character cr.
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indention: 3;
		yourself.
	testList := {{'test'. 0. true}.
				{'```'. 0. true}.
				{' t e s t'. 0. true}.
				{'      test'. 0. true}.
				{' ````'. 2. false}}.
	self testList: testList onBlock: testBlock.
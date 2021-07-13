tests - lineAdding
testClosingFenceToShort 

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indention: 0;
		yourself.
	testList := {{'test'. 0. true}.
	{'```'. 0. true}.
	{'~~~'. 0. true}.
	{'````'. 2. false}}.
	self testList: testList onBlock: testBlock.
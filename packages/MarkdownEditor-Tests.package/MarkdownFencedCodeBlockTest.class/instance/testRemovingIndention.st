tests - lineAdding
testRemovingIndention

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indentation: 3;
		yourself.
	testList := {{'test'. #matched. true}.
				{'```'. #matched. true}.
				{' t e s t'. #matched. true}.
				{'      test'. #matched. true}.
				{' ````'. #endOfLine. false}}.
	self testList: testList onBlock: testBlock.
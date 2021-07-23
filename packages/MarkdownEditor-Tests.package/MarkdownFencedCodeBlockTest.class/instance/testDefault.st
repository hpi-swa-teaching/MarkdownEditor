tests - lineAdding
testDefault 

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '```';
		indentation: 0;
		yourself.
	testList := {{'test'. 0. true}.
	{'test'. 0. true}.
	{'```'. 2. false}}.
	self testList: testList onBlock: testBlock.
	
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '~~~';
		indentation: 0;
		yourself.
	testList := {{'test'. 0. true}.
	{'test'. 0. true}.
	{'~~~'. 2. false}}.
	self testList: testList onBlock: testBlock.
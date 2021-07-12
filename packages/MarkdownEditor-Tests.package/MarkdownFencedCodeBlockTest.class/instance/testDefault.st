tests - lineAdding
testDefault 

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '```';
		indention: 0;
		yourself.
	testList := {{'test'. 0. 'test'. true}.
	{'test'. 0. 'test', Character cr, 'test'. true}.
	{'```'. 2. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
	
	testBlock := MarkdownFencedCodeBlock newFrom: '~~~'.
	testList := {{'test'. 0. 'test'. true}.
	{'test'. 0. 'test', Character cr, 'test'. true}.
	{'~~~'. 2. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
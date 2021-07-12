tests - lineAdding
testClosingFenceToShort 

	| testList testBlock |
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indention: 0;
		yourself.
	testList := {{'test'. ''. 'test'. true}.
	{'```'. ''. 'test', Character cr, '```'. true}.
	{'~~~'. ''. 'test', Character cr, '```', Character cr, '~~~'. true}.
	{'````'. ''. 'test', Character cr, '```', Character cr, '~~~'. false}}.
	self testList: testList onBlock: testBlock.
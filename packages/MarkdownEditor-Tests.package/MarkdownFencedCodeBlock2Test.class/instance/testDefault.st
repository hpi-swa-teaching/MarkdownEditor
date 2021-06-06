tests - lineAdding
testDefault 

	| testList testBlock |
	testBlock := MarkdownFencedCodeBlock2 newFrom: '```'.
	testList := {{'test'. true. 'test'. true}.
	{'test'. true. 'test', Character cr, 'test'. true}.
	{'```'. true. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
	
	testBlock := MarkdownFencedCodeBlock2 newFrom: '~~~'.
	testList := {{'test'. true. 'test'. true}.
	{'test'. true. 'test', Character cr, 'test'. true}.
	{'~~~'. true. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
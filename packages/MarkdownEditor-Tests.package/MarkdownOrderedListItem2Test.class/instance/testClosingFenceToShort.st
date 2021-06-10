tests - lineAdding
testClosingFenceToShort 

	| testList testBlock |
	testBlock := MarkdownFencedCodeBlock2 newFrom: '````'.
	testList := {{'test'. true. 'test'. true}.
		{'```'. true. 'test', Character cr, '```'. true}.
		{'~~~'. true. 'test', Character cr, '```', Character cr, '~~~'. true}.
		{'````'. true. 'test', Character cr, '```', Character cr, '~~~'. false}}.
	self testList: testList onBlock: testBlock.
tests - lineAdding
testInvalidClosingFence

	| testList testBlock cr |
	cr := Character cr.
	testBlock := MarkdownFencedCodeBlock2 newFrom: '````'.
	testList := {{'test'. true. 'test'. true}.
				{'```'. true. 'test', cr, '```'. true}.
				{'~~~'. true. 'test', cr, '```', cr, '~~~'. true}.
				{'``` ``'. true. 'test', cr, '```', cr, '~~~', cr, '``` ``'. true}.
				{'``` squeak'. true. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak'. true}.
				{'    ````'. true. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak', cr, '    ````'. true}.
				{'````'. true. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak', cr, '    ````'. false}}.
	self testList: testList onBlock: testBlock.
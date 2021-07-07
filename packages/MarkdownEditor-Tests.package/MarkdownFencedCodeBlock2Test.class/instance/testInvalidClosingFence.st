tests - lineAdding
testInvalidClosingFence

	| testList testBlock cr |
	cr := Character cr.
	testBlock := MarkdownFencedCodeBlock newFrom: '````'.
	testList := {{'test'. ''. 'test'. true}.
				{'```'. ''. 'test', cr, '```'. true}.
				{'~~~'. ''. 'test', cr, '```', cr, '~~~'. true}.
				{'``` ``'. ''. 'test', cr, '```', cr, '~~~', cr, '``` ``'. true}.
				{'``` squeak'. ''. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak'. true}.
				{'    ````'. ''. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak', cr, '    ````'. true}.
				{'````'. ''. 'test', cr, '```', cr, '~~~', cr, '``` ``', cr, '``` squeak', cr, '    ````'. false}}.
	self testList: testList onBlock: testBlock.
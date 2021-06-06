tests - lineAdding
testRemovingIndention

	| testList testBlock cr |
	cr := Character cr.
	testBlock := MarkdownFencedCodeBlock2 newFrom: '   ````'.
	testList := {{'test'. true. 'test'. true}.
				{'```'. true. 'test', cr, '```'. true}.
				{' t e s t'. true. 'test', cr, '```', cr, 't e s t'. true}.
				{'      test'. true. 'test', cr, '```', cr, 't e s t', cr, '   test'. true}.
				{' ````'. true. 'test', cr, '```', cr, 't e s t', cr, '   test'. false}}.
	self testList: testList onBlock: testBlock.
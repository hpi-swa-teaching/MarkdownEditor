tests - lineAdding
testRemovingIndention

	| testList testBlock cr |
	cr := Character cr.
	testBlock := (MarkdownFencedCodeBlock new)
		openingFence: '````';
		indention: 3;
		yourself.
	testList := {{'test'. ''. 'test'. true}.
				{'```'. ''. 'test', cr, '```'. true}.
				{' t e s t'. ''. 'test', cr, '```', cr, 't e s t'. true}.
				{'      test'. ''. 'test', cr, '```', cr, 't e s t', cr, '   test'. true}.
				{' ````'. ''. 'test', cr, '```', cr, 't e s t', cr, '   test'. false}}.
	self testList: testList onBlock: testBlock.
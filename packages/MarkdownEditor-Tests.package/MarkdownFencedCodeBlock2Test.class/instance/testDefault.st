tests - lineAdding
testDefault 

	| testList testBlock |
	testBlock := MarkdownFencedCodeBlock newFrom: '```'.
	testList := {{'test'. ''. 'test'. true}.
	{'test'. ''. 'test', Character cr, 'test'. true}.
	{'```'. ''. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
	
	testBlock := MarkdownFencedCodeBlock newFrom: '~~~'.
	testList := {{'test'. ''. 'test'. true}.
	{'test'. ''. 'test', Character cr, 'test'. true}.
	{'~~~'. ''. 'test', Character cr, 'test'. false}}.
	self testList: testList onBlock: testBlock.
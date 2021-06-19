tests - lineAdding
testApplyDefault

	| testList testBlock |
	testBlock := MarkdownListItem2 newFrom: '1. test'.
	testList := {{'   test test'. 'test test'}.
				{'      test test'. '   test test'}}.
	self testList: testList onBlock: testBlock.
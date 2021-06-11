tests - lineAdding
testApplyDefault

	| testList testBlock |
	testBlock := MarkdownOrderedListItem2 newFrom: '1. test'.
	testList := {{'   test test'. 'test test'}.
				{'      test test'. '   test test'}}.
	self testList: testList onBlock: testBlock.
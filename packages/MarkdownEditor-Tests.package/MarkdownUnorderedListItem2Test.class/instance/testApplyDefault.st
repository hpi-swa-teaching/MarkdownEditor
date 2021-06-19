tests - lineAdding
testApplyDefault

	| testList testBlock |
	testBlock := MarkdownListItem2 newFrom: '- test'.
	testList := {{'  test test'. 'test test'}.
				{'     test test'. '   test test'}}.
	self testList: testList onBlock: testBlock.
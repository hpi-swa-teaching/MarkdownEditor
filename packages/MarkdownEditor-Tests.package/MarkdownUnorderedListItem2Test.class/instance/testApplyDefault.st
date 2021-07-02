tests - lineAdding
testApplyDefault

	| testList testBlock |
	testBlock := MarkdownListItem newFrom: '- test'.
	testList := {{'  test test'. 'test test'}.
				{'     test test'. '   test test'}}.
	self testList: testList onBlock: testBlock
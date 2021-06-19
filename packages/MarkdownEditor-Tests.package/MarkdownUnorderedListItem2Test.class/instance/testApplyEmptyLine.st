tests - lineAdding
testApplyEmptyLine

	| testList testBlock |
	testBlock := MarkdownListItem2 newFrom: '- test'.
	testList := {{''. ''}.
				{'  test test'. 'test test'}}.
	self testList: testList onBlock: testBlock.
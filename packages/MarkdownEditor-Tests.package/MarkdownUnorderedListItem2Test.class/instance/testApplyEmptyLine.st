tests - lineAdding
testApplyEmptyLine

	| testList testBlock |
	testBlock := MarkdownListItem newFrom: '- test'.
	testList := {{''. ''}.
				{'  test test'. 'test test'}}.
	self testList: testList onBlock: testBlock
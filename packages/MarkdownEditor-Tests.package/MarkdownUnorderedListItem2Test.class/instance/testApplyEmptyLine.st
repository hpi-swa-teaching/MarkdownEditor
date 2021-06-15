tests - lineAdding
testApplyEmptyLine

	| testList testBlock |
	testBlock := MarkdownUnorderedListItem2 newFrom: '- test'.
	testList := {{''. ''}.
				{'  test test'. 'test test'}}.
	self testList: testList onBlock: testBlock.
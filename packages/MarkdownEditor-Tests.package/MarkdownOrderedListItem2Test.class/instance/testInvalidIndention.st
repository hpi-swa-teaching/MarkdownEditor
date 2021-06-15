tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownOrderedListItem2 newFrom: '1. test'.
	testList := {{'  test test'. nil}}.
	self testList: testList onBlock: testBlock.
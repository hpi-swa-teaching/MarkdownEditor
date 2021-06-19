tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownListItem2 newFrom: '1. test'.
	testList := {{'  test test'. nil}}.
	self testList: testList onBlock: testBlock.
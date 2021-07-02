tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownListItem newFrom: '1. test'.
	testList := {{'  test test'. nil}}.
	self testList: testList onBlock: testBlock
tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownListItem newFrom: '- test'.
	testList := {{' test test'. nil}}.
	self testList: testList onBlock: testBlock
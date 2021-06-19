tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownListItem2 newFrom: '- test'.
	testList := {{' test test'. nil}}.
	self testList: testList onBlock: testBlock.
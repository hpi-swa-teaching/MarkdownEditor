tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := MarkdownUnorderedListItem2 newFrom: '- test'.
	testList := {{' test test'. nil}}.
	self testList: testList onBlock: testBlock.
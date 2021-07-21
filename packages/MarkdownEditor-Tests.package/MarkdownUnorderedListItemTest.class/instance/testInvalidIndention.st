tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 2;
		innerLine: 'test';
		container: (MarkdownList new indention: 2);
		yourself.
	testList := {{' test test'. 1}}.
	self testList: testList onBlock: testBlock
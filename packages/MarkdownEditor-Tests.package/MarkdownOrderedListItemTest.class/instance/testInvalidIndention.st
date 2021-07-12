tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indention: 3);
		yourself.
	testList := {{'  test test'. 1}}.
	self testList: testList onBlock: testBlock
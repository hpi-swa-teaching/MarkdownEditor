tests - lineAdding
testApplyDefault

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 2;
		innerLine: 'test';
		container: (MarkdownList new indention: 2);
		yourself.
	testList := {{'  test test'. 0}.
				{'     test test'. 0}}.
	self testList: testList onBlock: testBlock
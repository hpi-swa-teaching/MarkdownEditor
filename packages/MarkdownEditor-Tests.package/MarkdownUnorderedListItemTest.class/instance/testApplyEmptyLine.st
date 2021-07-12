tests - lineAdding
testApplyEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 2;
		innerLine: 'test';
		container: (MarkdownList new indention: 2);
		yourself.
	testList := {{''. 1}.
				{'  test test'. 0}}.
	self testList: testList onBlock: testBlock
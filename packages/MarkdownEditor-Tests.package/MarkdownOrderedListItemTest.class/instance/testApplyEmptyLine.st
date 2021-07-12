tests - lineAdding
testApplyEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indention: 3);
		yourself.
	testList := {{''. 1}.
				{'   test test'. 0}}.
	self testList: testList onBlock: testBlock
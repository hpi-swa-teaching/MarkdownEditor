tests - lineAdding
testContinueDefault

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indention: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indention: 3; startNumber: '1'; yourself);
		yourself.
	testList := {{'   test test'. 0}.
				{'      test test'. 0}}.
	self testList: testList onBlock: testBlock
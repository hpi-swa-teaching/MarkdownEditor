tests - lineAdding
testContinueDefault

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indentation: 3; startNumber: '1'; yourself);
		yourself.
	testList := {{'   test test'. #matched}.
				{'      test test'. #matched}}.
	self testList: testList onBlock: testBlock
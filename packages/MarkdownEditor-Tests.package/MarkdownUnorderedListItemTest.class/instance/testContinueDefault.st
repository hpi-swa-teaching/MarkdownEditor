tests - lineAdding
testContinueDefault

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 2;
		innerLine: 'test';
		container: (MarkdownList new indentation: 2);
		yourself.
	testList := {{'  test test'. #matched}.
				{'     test test'. #matched}}.
	self testList: testList onBlock: testBlock
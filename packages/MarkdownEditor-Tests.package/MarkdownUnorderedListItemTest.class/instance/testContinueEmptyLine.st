tests - lineAdding
testContinueEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 2;
		innerLine: 'test';
		container: (MarkdownList new indentation: 2);
		yourself.
	testList := {{''. 1}.
				{'  test test'. 0}}.
	self testList: testList onBlock: testBlock
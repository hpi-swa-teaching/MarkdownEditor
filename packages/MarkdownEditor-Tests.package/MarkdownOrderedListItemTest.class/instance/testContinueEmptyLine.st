tests - lineAdding
testContinueEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indentation: 3);
		yourself.
	testList := {{''. 1}.
				{'   test test'. 0}}.
	self testList: testList onBlock: testBlock
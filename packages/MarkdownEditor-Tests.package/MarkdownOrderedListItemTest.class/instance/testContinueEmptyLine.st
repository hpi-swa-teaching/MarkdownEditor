tests - lineAdding
testContinueEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indentation: 3);
		yourself.
	testList := {{''. #failedMatch}.
				{'   test test'. #matched}}.
	self testList: testList onBlock: testBlock
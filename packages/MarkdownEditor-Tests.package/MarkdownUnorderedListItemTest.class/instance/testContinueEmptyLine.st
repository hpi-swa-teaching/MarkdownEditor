tests - lineAdding
testContinueEmptyLine

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 2;
		innerLine: 'test';
		container: (MarkdownList new indentation: 2);
		yourself.
	testList := {{''. #failedMatch}.
				{'  test test'. #matched}}.
	self testList: testList onBlock: testBlock
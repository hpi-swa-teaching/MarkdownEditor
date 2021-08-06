tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 2;
		innerLine: 'test';
		container: (MarkdownList new indentation: 2);
		yourself.
	testList := {{' test test'. #failedMatch}}.
	self testList: testList onBlock: testBlock
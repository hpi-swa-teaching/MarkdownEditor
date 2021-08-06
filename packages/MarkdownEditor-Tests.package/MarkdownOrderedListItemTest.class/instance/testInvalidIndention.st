tests - lineAdding
testInvalidIndention

	| testList testBlock |
	testBlock := (MarkdownListItem new)
		indentation: 3;
		number: '1';
		innerLine: 'test';
		container: (MarkdownList new indentation: 3);
		yourself.
	testList := {{'  test test'. #failedMatch}}.
	self testList: testList onBlock: testBlock
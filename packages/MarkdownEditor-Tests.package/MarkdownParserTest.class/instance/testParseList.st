tests - lists
testParseList

	| output |
	output := parser parse: '- foo
- bar
+ baz'.
	
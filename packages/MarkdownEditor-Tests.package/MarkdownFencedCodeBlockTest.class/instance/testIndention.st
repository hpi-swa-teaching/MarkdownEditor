tests - creation
testIndention

	| testList |
	testList := {{' ```'. ''. 1. '```'}.
				{'   ~~~'. ''. 3. '~~~'}}.
	self testList: testList
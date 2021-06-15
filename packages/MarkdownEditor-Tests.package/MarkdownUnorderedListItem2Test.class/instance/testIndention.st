tests - creation
testIndention

	| testList |
	testList := {{'-    test test'. 5. 'test test'}.
				{'   -    test test'. 8. 'test test'}.
				{'   -     test test'. 5. '    test test'}.
				{'   -       test test'. 5. '      test test'}.}.
	self testList: testList.
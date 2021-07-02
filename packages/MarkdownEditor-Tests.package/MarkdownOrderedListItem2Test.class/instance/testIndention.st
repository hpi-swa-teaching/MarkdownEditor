tests - creation
testIndention

	| testList |
	testList := {{'1.    test test'. 1. 6. 'test test'}.
				{'   1.    test test'. 1. 9. 'test test'}.
				{'   1.     test test'. 1. 6. '    test test'}.
				{'   1.       test test'. 1. 6. '      test test'}.
				{'   1.       test test'. 1. 6. '      test test'}.
				{'   12345.       test test'. 12345. 10. '      test test'}.}.
	self testList: testList
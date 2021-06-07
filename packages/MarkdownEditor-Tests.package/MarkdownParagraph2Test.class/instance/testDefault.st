tests - creation
testDefault
	
	| testList |
	testList := {{'test'. 'test'}.
				{' test'. 'test'}.
				{'   test'. 'test'}.
				{' t e s t '. 't e s t'}}.
	self testList: testList.
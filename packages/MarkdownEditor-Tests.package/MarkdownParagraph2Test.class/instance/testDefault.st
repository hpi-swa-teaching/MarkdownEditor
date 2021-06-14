tests - creation
testDefault
	
	| testList |
	testList := {{'t'. 't'}.
				{' test'. 'test'}.
				{'   test'. 'test'}.
				{' t e s t '. 't e s t'}}.
	self testList: testList.
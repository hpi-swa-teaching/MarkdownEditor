tests - lineAdding
testContinueDefault
	
	| testList |
	testList := {{'> # test'. '# test'}.
				{'   >test'. 'test'}.
				{'>     test'. '    test'}}.
	self testListContinue: testList.
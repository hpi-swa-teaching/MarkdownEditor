tests - creation
testDefault
	
	| testList |
	testList := {{'> # test'. '# test'}.
				{'   >test'. 'test'}.
				{'>     test'. '    test'}}.
	self testList: testList.
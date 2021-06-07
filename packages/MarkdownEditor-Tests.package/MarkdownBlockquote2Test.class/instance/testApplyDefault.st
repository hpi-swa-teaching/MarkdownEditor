tests - lineAdding
testApplyDefault
	
	| testList |
	testList := {{'> # test'. '# test'}.
				{'   >test'. 'test'}.
				{'>     test'. '    test'}}.
	self testListApply: testList.
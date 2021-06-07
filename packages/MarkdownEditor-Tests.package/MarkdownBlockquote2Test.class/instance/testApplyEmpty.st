tests - lineAdding
testApplyEmpty
	
	| testList |
	testList := {{'>'. ''}.
	                   {'  >    '. '   '}}.
	self testListApply: testList.
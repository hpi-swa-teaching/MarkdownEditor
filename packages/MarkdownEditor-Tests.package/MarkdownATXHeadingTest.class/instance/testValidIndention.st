tests - creation
testValidIndention
	
	| testList |
	testList := {{' # test'. 1. 'test'}. 
				{'   # test'. 1. 'test'}}.
	self testList: testList
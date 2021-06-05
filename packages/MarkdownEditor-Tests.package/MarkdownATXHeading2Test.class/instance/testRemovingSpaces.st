tests - creation
testRemovingSpaces
	
	| testList |
	testList := {{'#                  foo                     '. 1. 'foo'}. 
				{'#        test test   test  '. 1. 'test test   test'}}.
	self testList: testList.
tests - creation
testRemovingIndention
	
	| testList |
	testList := {{'#                  foo                     '. 1. 'foo'}. 
				{'#        test test   test  '. 1. 'test test   test'}}.
	self testList: testList.
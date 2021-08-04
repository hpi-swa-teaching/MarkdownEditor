tests - creation
testHeadingLevel
	
	| testList |
	testList := {{'# test'. 1. 'test'}. 
				{'## test'. 2. 'test'}. 
				{'###### test'. 6. 'test'}. 
				{'####### test'}}.
	self testList: testList.
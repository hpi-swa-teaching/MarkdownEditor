tests - creation
testEmptyHeading
	
	| testList |
	testList := {{'#'. 1. ''}. 
				{'## '. 2. ''}.
				{'### ###'. 3. ''}. 
				{'###                   '. 3. ''}}.
	self testList: testList.
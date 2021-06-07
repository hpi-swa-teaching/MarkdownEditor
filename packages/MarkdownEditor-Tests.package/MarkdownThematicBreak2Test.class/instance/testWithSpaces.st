tests - creation
testWithSpaces
	
	| testList |
	testList := {{' - - -'. true}. 
				{' **  * ** * ** * **'. true}.
				{'-     -      -      -'. true}.
				{'__ _  ___            '. true}. 
				{'   _____'. true}}.
	self testList: testList.
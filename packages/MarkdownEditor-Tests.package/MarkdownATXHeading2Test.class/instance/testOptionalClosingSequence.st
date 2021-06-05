tests - creation
testOptionalClosingSequence
	
	| testList |
	testList := {{'  ###   test    ###'. 3. 'test'}.
				{'# test ##################################'. 1. 'test'}.
				{'### test ### b'. 3. 'test ### b'}.
				{'### test \###'. 3. 'test ###'}.
				{'### test###'. 3. 'test###'}.
				{'## test #\##'. 2. 'test ###'}.
				{'# test \#'. 1. 'test #'}}.
	self testList: testList.
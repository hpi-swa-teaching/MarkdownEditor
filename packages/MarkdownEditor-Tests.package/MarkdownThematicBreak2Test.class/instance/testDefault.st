tests - creation
testDefault
	
	| testList |
	testList := {{'***'. true}. 
				{'---'. true}.
				{'___'. true}.
				{'************'. true}. 
				{'-----------'. true}.
				{'__________'. true}}.
	self testList: testList.
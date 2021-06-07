tests - creation
testWithInvalid
	
	| testList |
	testList := {{'--'. false}. 
				{' **'. false}.
				{'_     _'. false}.
				{'+++'. false}. 
				{'==='. false}.
				{'*_*'. false}. 
				{'___a___'. false}.
				{'a----'. false}. 
				{'***a'. false}}.
	self testList: testList.
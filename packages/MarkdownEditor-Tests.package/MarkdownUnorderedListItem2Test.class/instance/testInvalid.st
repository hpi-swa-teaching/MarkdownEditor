tests - creation
testInvalid

	| testList |
	testList := {{'-test'}.
				{'    - test'}.
				{'-1. test'}}.
	self testList: testList.
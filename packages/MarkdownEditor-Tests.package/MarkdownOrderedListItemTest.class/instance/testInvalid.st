tests - creation
testInvalid

	| testList |
	testList := {{'1.test'}.
				{'1234567891. test'}.
				{'    1. test'}.
				{'-1. test'}.
				{'1 test'}}.
	self testList: testList
tests - creation
testInvalidHeading
	
	| testList |
	testList := {{'#test'}. 
				{'\## foo'}.
				{'    # foo'}}.
	self testList: testList
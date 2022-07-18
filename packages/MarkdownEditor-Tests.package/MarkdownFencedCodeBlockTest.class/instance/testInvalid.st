tests - creation
testInvalid

	| testList |
	testList := {{'``'}.
				{'~`~'}.
				{'~~'}.
				{'    ```'}.
				{'`` `'}.
				{'test```'}.
				{'``` aa ```'}.
				{'``` ```'}}.
	self testList: testList
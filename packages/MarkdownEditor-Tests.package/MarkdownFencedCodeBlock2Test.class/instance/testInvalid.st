as yet unclassified
testInvalid

	| testList |
	testList := {{'``'}.
				{'~`~'}.
				{'~~'}.
				{'    ```'}.
				{'`` `'}.
				{'test```'}.
				{'``` aa ```'}}.
	self testList: testList.
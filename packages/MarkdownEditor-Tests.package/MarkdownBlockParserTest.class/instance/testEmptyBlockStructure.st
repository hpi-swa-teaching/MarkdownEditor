tests - blocks
testEmptyBlockStructure

	blockParser parse: ''.
	self assert: blockParser blocks isEmpty
Unnecessary Code
testVariableNotReferenced

	self assertAll: (self lint: #smallLintUnreferencedVariables) areEqualTo: 0
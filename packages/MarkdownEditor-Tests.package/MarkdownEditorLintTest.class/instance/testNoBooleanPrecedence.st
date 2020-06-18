Bugs
testNoBooleanPrecedence

	self assertAll: (self lint: #smallLintBooleanPrecedence) areEqualTo: 0
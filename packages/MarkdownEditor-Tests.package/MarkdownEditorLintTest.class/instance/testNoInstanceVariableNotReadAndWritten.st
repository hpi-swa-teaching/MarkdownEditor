Unnecessary Code
testNoInstanceVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenVariable)
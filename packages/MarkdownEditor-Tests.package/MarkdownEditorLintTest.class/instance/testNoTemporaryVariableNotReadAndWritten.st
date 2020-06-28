Unnecessary Code
testNoTemporaryVariableNotReadAndWritten

	self assertAllZero: (self lint: #smallLintOnlyReadOrWrittenTemporary) 
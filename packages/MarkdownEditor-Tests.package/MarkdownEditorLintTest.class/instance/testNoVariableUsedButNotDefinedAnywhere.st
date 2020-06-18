Bugs
testNoVariableUsedButNotDefinedAnywhere

	self assertAll: (self lint: #smallLintVariableNotDefined) areEqualTo: 0
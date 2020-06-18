Bugs
testNoSubclassResponsibilityNotDefined

	self assertAll: (self lint: #smallLintSubclassResponsibilityNotDefined) areEqualTo: 0
Bugs
testNoOverridesAFinalMethod

	self assertAll: (self lint: #smallLintMethodModifierFinal) areEqualTo: 0
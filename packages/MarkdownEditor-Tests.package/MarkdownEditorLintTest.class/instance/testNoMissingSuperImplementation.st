Bugs
testNoMissingSuperImplementation

	self assertAll: (self lint: #smallLintMethodModifierOverride) areEqualTo: 0
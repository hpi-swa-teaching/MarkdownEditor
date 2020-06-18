Bugs
testNoSuperclassCallRequired

	self assertAll: (self lint: #smallLintMethodModifierSuper) areEqualTo: 0
Bugs
testNoOverridesASpecialMessage

	self assertAll: (self lint: #smallLintOverridesSpecialMessage) areEqualTo: 0
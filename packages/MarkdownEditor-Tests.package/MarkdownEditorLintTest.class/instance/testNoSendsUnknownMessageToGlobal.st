Bugs
testNoSendsUnknownMessageToGlobal

	self assertAll: (self lint: #smallLintSendsUnknownMessageToGlobal) areEqualTo: 0
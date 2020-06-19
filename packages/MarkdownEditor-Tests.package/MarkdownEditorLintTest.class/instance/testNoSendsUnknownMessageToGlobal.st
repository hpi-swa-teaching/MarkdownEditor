Bugs
testNoSendsUnknownMessageToGlobal

	self assertAllZero: (self lint: #smallLintSendsUnknownMessageToGlobal)
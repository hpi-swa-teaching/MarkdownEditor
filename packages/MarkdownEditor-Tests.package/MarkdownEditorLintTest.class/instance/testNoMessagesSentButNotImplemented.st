Bugs
testNoMessagesSentButNotImplemented

	self assertAll: (self lint: #smallLintSentNotImplemented) areEqualTo: 0
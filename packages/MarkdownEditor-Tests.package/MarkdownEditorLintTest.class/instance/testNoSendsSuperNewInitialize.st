Pharo bugs
testNoSendsSuperNewInitialize

	self assertAllZero: (self lint: #smallLintSuperSendsNew)
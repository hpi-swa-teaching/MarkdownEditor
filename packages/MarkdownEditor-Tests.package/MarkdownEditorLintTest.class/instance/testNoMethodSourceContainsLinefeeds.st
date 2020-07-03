Pharo bugs
testNoMethodSourceContainsLinefeeds

	self assertAllZero: (self lint: #smallLintMethodSourceContainsLinefeeds)
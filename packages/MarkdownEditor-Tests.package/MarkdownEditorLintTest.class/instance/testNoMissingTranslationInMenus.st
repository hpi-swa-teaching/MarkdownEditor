Pharo bugs
testNoMissingTranslationInMenus

	self assertAllZero: (self lint: #smallLintMethodSourceContainsLinefeeds)
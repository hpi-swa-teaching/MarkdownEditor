helper
handlePunctuationRuleFrom: aPaddedDelimiterRun

	((self punctuationCharsIncludesFirstCharFrom: aPaddedDelimiterRun)
		and: [self punctuationCharsIncludesLastCharFrom: aPaddedDelimiterRun])
			ifTrue: [self addDelimiterFrom: aPaddedDelimiterRun]
			ifFalse: [self handleFurtherPunctuationRulesFrom: aPaddedDelimiterRun]
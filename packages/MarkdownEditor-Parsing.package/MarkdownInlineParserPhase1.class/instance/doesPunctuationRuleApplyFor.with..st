helper
doesPunctuationRuleApplyFor: aPaddedDelimiterRun with: aType

	(self punctuationCharsIncludesFirstCharFrom: aPaddedDelimiterRun)
			ifTrue: [^ true].
	(self punctuationCharsIncludesLastCharFrom: aPaddedDelimiterRun)
			ifTrue: [^ true].
	^ false

	
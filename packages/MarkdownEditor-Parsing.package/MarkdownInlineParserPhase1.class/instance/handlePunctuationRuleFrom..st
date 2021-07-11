helpers - emphasis
handlePunctuationRuleFrom: aPaddedDelimiterRun

	(self punctuationCharsInclude: aPaddedDelimiterRun first)
		ifTrue: [^ self addDelimiterFrom: 
					(' ', (aPaddedDelimiterRun allButFirst))].
	(self punctuationCharsInclude: aPaddedDelimiterRun last)
		ifTrue: [^ self addDelimiterFrom: 
					(aPaddedDelimiterRun allButLast, ' ')]
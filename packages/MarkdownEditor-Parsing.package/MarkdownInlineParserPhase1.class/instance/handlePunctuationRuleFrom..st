helper
handlePunctuationRuleFrom: aPaddedDelimiterRun

	(self punctuationCharsInclude: aPaddedDelimiterRun first)
		ifTrue: [^ self addDelimiterFrom: 
			(' ', (aPaddedDelimiterRun 
			copyFrom: 2 
			to: aPaddedDelimiterRun size) asString)].
	(self punctuationCharsInclude: aPaddedDelimiterRun last)
		ifTrue: [^ self addDelimiterFrom: 
			((aPaddedDelimiterRun 
			copyFrom: 1
			to: aPaddedDelimiterRun size - 1) asString, ' ')]
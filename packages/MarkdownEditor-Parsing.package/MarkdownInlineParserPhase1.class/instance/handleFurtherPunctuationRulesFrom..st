helper
handleFurtherPunctuationRulesFrom: aPaddedDelimiterRun

	((Character space = aPaddedDelimiterRun first asCharacter)
		and: [self punctuationCharsIncludesLastCharFrom: aPaddedDelimiterRun])
			ifTrue: [self addDelimiterFrom: (' ', aPaddedDelimiterRun copyFrom: 2 to: aPaddedDelimiterRun size)]
			ifFalse: [(self punctuationCharsIncludesLastCharFrom: aPaddedDelimiterRun)
						ifTrue: [self addStringFrom: (aPaddedDelimiterRun copyFrom: 2 to: aPaddedDelimiterRun size - 1)]
						ifFalse: [((self punctuationCharsIncludesFirstCharFrom: aPaddedDelimiterRun)
									and: [Character space = aPaddedDelimiterRun last asCharacter])
										ifTrue: [self addDelimiterFrom: (aPaddedDelimiterRun copyFrom: 1 to: aPaddedDelimiterRun size - 1), ' ']
										ifFalse: [(self punctuationCharsIncludesFirstCharFrom: aPaddedDelimiterRun)
													ifTrue: [self addStringFrom: (aPaddedDelimiterRun copyFrom: 2 to: aPaddedDelimiterRun size - 1)]]]]
